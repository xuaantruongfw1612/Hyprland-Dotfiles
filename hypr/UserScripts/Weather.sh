#!/bin/bash
# weather info from wttr

city="20.9702189,105.7749565"
location_name="Hà Đông"
cachedir="$HOME/.cache/rbn"
cachefile=${0##*/}-$1

if [ ! -d $cachedir ]; then
    mkdir -p $cachedir
fi

if [ ! -f $cachedir/$cachefile ]; then
    touch $cachedir/$cachefile
fi

# Save current IFS
SAVEIFS=$IFS
IFS=$'\n'

cacheage=$(($(date +%s) - $(stat -c '%Y' "$cachedir/$cachefile")))
if [ $cacheage -gt 1740 ] || [ ! -s $cachedir/$cachefile ]; then
    data=($(curl -s "https://en.wttr.in/$city"$1\?0qnT 2>&1))
    echo ${data[0]} | cut -f1 -d, > $cachedir/$cachefile
    echo ${data[1]} | sed -E 's/^.{15}//' >> $cachedir/$cachefile
    echo ${data[2]} | sed -E 's/^.{15}//' >> $cachedir/$cachefile
fi

weather=($(cat $cachedir/$cachefile))
IFS=$SAVEIFS

# Lấy nhiệt độ
temperature=$(echo ${weather[2]} | sed -E 's/\([0-9]+\)//g' | sed -E 's/([[:digit:]]+)\.\./\1 to /g' | sed 's/ °C/°C/g' | xargs)
temp_value=$(echo ${weather[2]} | grep -oP '\d+' | head -n1)
temp_short=$(echo ${weather[2]} | grep -oP '^\+?\d+')

# Lấy thông tin chi tiết GỘP 1 LƯỢT
weather_details=$(curl -s "https://en.wttr.in/$city?format=%C+%f+%h+%w+%p+%P" 2>&1)

# Parse nhanh bằng awk
feels_like=$(echo "$weather_details" | awk '{print $2}')
humidity=$(echo "$weather_details" | awk '{print $3}')
wind=$(echo "$weather_details" | awk '{print $4, $5}')
precip=$(echo "$weather_details" | awk '{print $6}')
pressure=$(echo "$weather_details" | awk '{print $7}')

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

# Tạo tooltip dọc (dùng &#10; cho newline trong HTML tooltip)
tooltip="Khu vực: $location_name&#10;"
tooltip+="Nhiệt độ: $temperature ($temp_desc)&#10;"
tooltip+="Cảm giác: $feels_like&#10;"
tooltip+="Độ ẩm: $humidity&#10;"
tooltip+="Gió: $wind&#10;"
tooltip+="Mưa: $precip&#10;"
tooltip+="Áp suất: $pressure"

# Output JSON
echo "{\"text\":\"$condition $temp_short°C\", \"alt\":\"$location_name\", \"tooltip\":\"$tooltip\", \"class\":\"$temp_class\"}"

cached_weather=" $temperature  \n$condition ${weather[1]}"
echo -e $cached_weather > "$HOME/.cache/.weather_cache"
