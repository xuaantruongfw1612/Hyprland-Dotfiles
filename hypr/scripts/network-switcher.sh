#!/bin/bash
# Script tự động chuyển mạng - wifi - internet nhanh hơn

CONNECTIONS=("Ten_mang_wifi_1" "Ten_Mang_WiFi_2")
CHECK_INTERVAL=600
LOG_FILE="$HOME/.config/hypr/logs/network-switcher.log"

mkdir -p "$(dirname "$LOG_FILE")"

while true; do
    BEST_CONN=""
    MIN_LATENCY=9999
    CURRENT_CONN=$(nmcli -t -f NAME connection show --active | head -n1)
    
    # Lưu latency của tất cả mạng để log
    declare -A LATENCIES
    
    for CONN in "${CONNECTIONS[@]}"; do
        if nmcli -t con show "$CONN" &>/dev/null; then
            AVG_PING=$(ping -c 3 -W 2 8.8.8.8 2>/dev/null | tail -1 | awk -F'/' '{print $5}')
            
            if [ ! -z "$AVG_PING" ]; then
                LATENCIES[$CONN]=$AVG_PING
                
                if (( $(echo "$AVG_PING < $MIN_LATENCY" | bc -l) )); then
                    MIN_LATENCY=$AVG_PING
                    BEST_CONN=$CONN
                fi
            fi
        fi
    done
    
    if [ "$BEST_CONN" != "$CURRENT_CONN" ] && [ ! -z "$BEST_CONN" ]; then
        # Lấy latency mạng cũ
        OLD_LATENCY="${LATENCIES[$CURRENT_CONN]:-N/A}"
        
        # Chuyển mạng
        nmcli con up "$BEST_CONN" &>/dev/null
        
        # Ghi log với format đẹp
        echo "$(date '+%Y-%m-%d %H:%M:%S'): $CURRENT_CONN (${OLD_LATENCY}ms) → $BEST_CONN (${MIN_LATENCY}ms)" >> "$LOG_FILE"
        
        # Notification với swaync - hiển thị 6 giây (theo config timeout)
        notify-send -u normal \
            -i network-wireless-signal-excellent \
            "Network Auto-Switched" \
            "Switched: <b>$CURRENT_CONN</b> (${OLD_LATENCY}ms)\n→ <b>$BEST_CONN</b> (${MIN_LATENCY}ms)"
    fi
    
    sleep $CHECK_INTERVAL
done
