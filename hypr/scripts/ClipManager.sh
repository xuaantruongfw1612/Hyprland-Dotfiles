#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Clipboard Manager with Image Preview
# --- Workspaces configuration by Xuan Truong ---

# Variables
rofi_theme="$HOME/.config/rofi/config-clipboard.rasi"
msg='👀 ||NOTE||  CTRL DEL = cliphist del (entry)   or   ALT DEL - cliphist wipe (all)'
tmp_dir="$HOME/.cache/thumbnails/normal"

# Create directory if not exists
mkdir -p "$tmp_dir"

# Check if rofi is already running
if pidof rofi > /dev/null; then
  pkill rofi
fi

while true; do
    result=$(
        cliphist list | while IFS= read -r line; do
            # Check if it's a binary image
            if echo "$line" | grep -qE "^[0-9]+\s+\[\[.*binary.*(jpg|jpeg|png|bmp)"; then
                # Extract image ID and extension
                id=$(echo "$line" | grep -oP '^\d+')
                ext=$(echo "$line" | grep -oP '(jpg|jpeg|png|bmp)' | head -1)
                
                # Decode image to cache directory
                echo "$line" | cliphist decode > "$tmp_dir/$id.$ext" 2>/dev/null
                
                # Output with icon path
                echo -en "$line\0icon\x1f$tmp_dir/$id.$ext\n"
            else
                echo "$line"
            fi
        done | rofi -i -dmenu \
            -kb-custom-1 "Control-Delete" \
            -kb-custom-2 "Alt-Delete" \
            -show-icons \
            -config "$rofi_theme" \
            -mesg "$msg"
    )

    case "$?" in
        1)
            exit
            ;;
        0)
            case "$result" in
                "")
                    continue
                    ;;
                *)
                    cliphist decode <<<"$result" | wl-copy
                    exit
                    ;;
            esac
            ;;
        10)
            cliphist delete <<<"$result"
            ;;
        11)
            cliphist wipe
            ;;
    esac
done
