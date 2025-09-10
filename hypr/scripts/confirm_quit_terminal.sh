#!/usr/bin/env bash
# Get active window info
active_window=$(hyprctl activewindow -j)
window_class=$(echo "$active_window" | jq -r '.class')
window_title=$(echo "$active_window" | jq -r '.title')

# Check if terminal or nvim/vim
if echo "$window_class $window_title" | grep -qi "terminal\|kitty\|alacritty\|foot\|wezterm\|st\|urxvt\|xterm\|konsole\|gnome-terminal\|nvim\|vim"; then
    
    if command -v rofi &> /dev/null; then
        # Đặt Yes làm mặc định (row 1, vì bắt đầu từ 0)
        choice=$(echo -e "󰜺 No\n󰩈 EXIT" | rofi -dmenu -i -p "Close terminal/editor?" \
            -theme-str 'window {width: 400px; height: 200px;}' \
            -theme-str 'listview {lines: 2;}' \
            -selected-row 1)
        
        [[ "$choice" == *"EXIT"* ]] && hyprctl dispatch killactive
        
    elif command -v wofi &> /dev/null; then
        choice=$(echo -e "󰜺 No\n󰩈 EXIT" | wofi --dmenu -i -p "Close terminal/editor?" \
            --width=400 --height=200 --lines=2)
        
        [[ "$choice" == *"EXIT"* ]] && hyprctl dispatch killactive
        
    else
        # Fallback với notification
        LOCK_FILE="/tmp/hypr_quit_confirm"
        
        if [[ -f "$LOCK_FILE" ]]; then
            rm "$LOCK_FILE"
            hyprctl dispatch killactive
        else
            touch "$LOCK_FILE"
            notify-send "󰅖 Confirmation" "Press Super+Q again within 3s to close" \
                --icon=dialog-warning --urgency=normal -t 3000
            (sleep 3 && rm -f "$LOCK_FILE") &
        fi
    fi
else
    hyprctl dispatch killactive
fi

