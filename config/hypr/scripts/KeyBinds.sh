#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Searchable enabled keybinds using rofi with filter mode
# --- Workspaces configuration by Xuan Truong ---
#
# Kill yad để không can thiệp vào binds
pkill yad || true

# Kiểm tra nếu rofi đang chạy
if pidof rofi > /dev/null; then
  pkill rofi
fi

# Định nghĩa các file config
keybinds_conf="$HOME/.config/hypr/configs/Keybinds.conf"
user_keybinds_conf="$HOME/.config/hypr/UserConfigs/UserKeybinds.conf"
laptop_conf="$HOME/.config/hypr/UserConfigs/Laptops.conf"
rofi_theme="$HOME/.config/rofi/config-keybinds.rasi"

# Kết hợp nội dung các file keybinds và lọc keybinds
keybinds=$(cat "$keybinds_conf" "$user_keybinds_conf" | grep -E '^bind')

# Kiểm tra nếu laptop.conf tồn tại và thêm keybinds của nó
if [[ -f "$laptop_conf" ]]; then
    laptop_binds=$(grep -E '^bind' "$laptop_conf")
    keybinds+=$'\n'"$laptop_binds"
fi

# Kiểm tra có keybinds để hiển thị không
if [[ -z "$keybinds" ]]; then
    echo "Không tìm thấy keybinds."
    exit 1
fi

# Thay thế $mainMod với SUPER trong keybinds hiển thị cho rofi
display_keybinds=$(echo "$keybinds" | sed 's/\$mainMod/SUPER/g')

# Menu lọc - Chọn filter mode
filter_options="All Keybinds (Tất cả)\nSUPER only (Chỉ SUPER)\nSUPER + SHIFT\nSUPER + CTRL\nSUPER + ALT\nCTRL + ALT\nNo Modifiers (Không modifier)"

filter_choice=$(echo -e "$filter_options" | rofi -dmenu -i -p "Chọn bộ lọc phím tắt" -theme-str 'window {width: 400px;}')

# Nếu không chọn gì, thoát
if [[ -z "$filter_choice" ]]; then
    exit 0
fi

# Lọc keybinds dựa trên lựa chọn
case "$filter_choice" in
    "All Keybinds (Tất cả)")
        filtered_keybinds="$display_keybinds"
        msg="|| NOTE ||: Clicking with Mouse or Pressing ENTER will have NO function | Filter: All"
        ;;
    "SUPER only (Chỉ SUPER)")
        filtered_keybinds=$(echo "$display_keybinds" | grep -E 'SUPER[^_ ]' | grep -v 'SHIFT' | grep -v 'CTRL' | grep -v 'ALT')
        msg="|| Filter: SUPER only (không có SHIFT/CTRL/ALT)"
        ;;
    "SUPER + SHIFT")
        filtered_keybinds=$(echo "$display_keybinds" | grep -E 'SUPER.*SHIFT|SHIFT.*SUPER')
        msg="|| Filter: SUPER + SHIFT"
        ;;
    "SUPER + CTRL")
        filtered_keybinds=$(echo "$display_keybinds" | grep -E 'SUPER.*CTRL|CTRL.*SUPER')
        msg="|| Filter: SUPER + CTRL"
        ;;
    "SUPER + ALT")
        filtered_keybinds=$(echo "$display_keybinds" | grep -E 'SUPER.*ALT|ALT.*SUPER')
        msg="|| Filter: SUPER + ALT"
        ;;
    "CTRL + ALT")
        filtered_keybinds=$(echo "$display_keybinds" | grep -E 'CTRL.*ALT|ALT.*CTRL')
        msg="|| Filter: CTRL + ALT"
        ;;
    "No Modifiers (Không modifier)")
        filtered_keybinds=$(echo "$display_keybinds" | grep -v 'SUPER' | grep -v 'CTRL' | grep -v 'ALT' | grep -v 'SHIFT')
        msg="|| Filter: No modifier keys (Fn keys, media keys, etc.)"
        ;;
    *)
        filtered_keybinds="$display_keybinds"
        msg="|| NOTE ||: Clicking with Mouse or Pressing ENTER will have NO function"
        ;;
esac

# Kiểm tra nếu không có keybinds sau khi lọc
if [[ -z "$filtered_keybinds" ]]; then
    echo "Không tìm thấy keybinds cho bộ lọc này" | rofi -dmenu -i -p "Kết quả"
    exit 0
fi

# Sắp xếp theo alphabet (optional)
filtered_keybinds=$(echo "$filtered_keybinds" | sort)

# Hiển thị keybinds đã lọc với rofi
echo "$filtered_keybinds" | rofi -dmenu -i -config "$rofi_theme" -mesg "$msg"
