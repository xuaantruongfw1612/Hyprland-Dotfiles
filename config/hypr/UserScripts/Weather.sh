#!/bin/bash
# weather info from wttr

city="20.8193,106.0314"
location_name="Hưng Yên"
# city="20.9702189,105.7749565"
# location_name="Hà Đông"
cachedir="$HOME/.cache/rbn"
cachefile=${0##*/}-$1

[ ! -d "$cachedir" ] && mkdir -p "$cachedir"
[ ! -f "$cachedir/$cachefile" ] && touch "$cachedir/$cachefile"

SAVEIFS=$IFS
IFS=$'\n'

cacheage=$(($(date +%s) - $(stat -c '%Y' "$cachedir/$cachefile")))
if [ $cacheage -gt 1740 ] || [ ! -s "$cachedir/$cachefile" ]; then
    data=($(curl -s "https://en.wttr.in/$city"$1\?0qnT 2>&1))
    echo ${data[0]} | cut -f1 -d, > "$cachedir/$cachefile"
    echo ${data[1]} | sed -E 's/^.{15}//' >> "$cachedir/$cachefile"
    echo ${data[2]} | sed -E 's/^.{15}//' >> "$cachedir/$cachefile"
fi

weather=($(cat "$cachedir/$cachefile"))
IFS=$SAVEIFS

# Lấy nhiệt độ
temperature=$(echo ${weather[2]} | sed -E 's/\([0-9]+\)//g' | sed -E 's/([[:digit:]]+)\.\./\1 to /g' | sed 's/ °C/°C/g' | xargs)
temp_value=$(echo ${weather[2]} | grep -oP '\d+' | head -n1)
temp_short=$(echo ${weather[2]} | grep -oP '^\+?\d+')

# Lấy thông tin chi tiết với format chính xác
# %C=condition %f=feels_like %h=humidity %w=wind %p=precipitation %P=pressure
weather_raw=$(curl -s "https://wttr.in/$city?format=%C|%f|%h|%w|%p|%P" 2>&1)

# Parse từng field với delimiter |
IFS='|' read -r condition_text feels_like humidity wind precip pressure <<< "$weather_raw"

# Xác định class theo nhiệt độ
if [ -z "$temp_value" ]; then
    temp_class=""
    temp_desc="Bình thường"
elif [ "$temp_value" -lt 10 ]; then
    temp_class="freezing"
    temp_desc="Rất lạnh"
elif [ "$temp_value" -lt 15 ]; then
    temp_class="cold"
    temp_desc="Lạnh"
elif [ "$temp_value" -lt 20 ]; then
    temp_class="cool"
    temp_desc="Mát mẻ"
elif [ "$temp_value" -lt 25 ]; then
    temp_class=""
    temp_desc="Dễ chịu"
elif [ "$temp_value" -lt 30 ]; then
    temp_class="warm"
    temp_desc="Ấm áp"
elif [ "$temp_value" -lt 35 ]; then
    temp_class="hot"
    temp_desc="Nóng"
else
    temp_class="veryhot"
    temp_desc="Rất nóng"
fi

# https://fontawesome.com/icons?s=solid&c=weather
case $(echo ${weather[1]##*,} | tr '[:upper:]' '[:lower:]') in
"clear" | "sunny")
    condition=""
    ;;
"partly cloudy")
    condition="󰖕"
    ;;
"cloudy")
    condition=""
    ;;
"overcast")
    condition=""
    ;;
"fog" | "freezing fog")
    condition=""
    ;;
"patchy rain possible" | "patchy light drizzle" | "light drizzle" | "patchy light rain" | "light rain" | "light rain shower" | "mist" | "rain")
    condition="󰼳"
    ;;
"moderate rain at times" | "moderate rain" | "heavy rain at times" | "heavy rain" | "moderate or heavy rain shower" | "torrential rain shower" | "rain shower")
    condition=""
    ;;
"patchy snow possible" | "patchy sleet possible" | "patchy freezing drizzle possible" | "freezing drizzle" | "heavy freezing drizzle" | "light freezing rain" | "moderate or heavy freezing rain" | "light sleet" | "ice pellets" | "light sleet showers" | "moderate or heavy sleet showers")
    condition="󰼴"
    ;;
"blowing snow" | "moderate or heavy sleet" | "patchy light snow" | "light snow" | "light snow showers")
    condition="󰙿"
    ;;
"blizzard" | "patchy moderate snow" | "moderate snow" | "patchy heavy snow" | "heavy snow" | "moderate or heavy snow with thunder" | "moderate or heavy snow showers")
    condition=""
    ;;
"thundery outbreaks possible" | "patchy light rain with thunder" | "moderate or heavy rain with thunder" | "patchy light snow with thunder")
    condition=""
    ;;
*)
    condition=""
    echo -e "{\"text\":\""$condition"\", \"alt\":\""${weather[0]}"\", \"tooltip\":\""${weather[0]}: $temperature ${weather[1]}"\"}"
    ;;
esac

# Tạo tooltip
tooltip="Location: $location_name\\n"
tooltip+="Temp: $temperature ($temp_desc)\\n"
tooltip+="Feels like: $feels_like\\n"
tooltip+="Humidity: $humidity\\n"
tooltip+="Wind: $wind\\n"
tooltip+="Rain: $precip\\n"
tooltip+="Pressure: $pressure"

# Output JSON
printf '{"text":"%s %s°C", "alt":"%s", "tooltip":"%s", "class":"%s"}\n' \
    "$condition" "$temp_short" "$location_name" "$tooltip" "$temp_class"

# Cache
cached_weather=" $temperature  \\n$condition ${weather[1]}"
echo -e "$cached_weather" > "$HOME/.cache/.weather_cache"
