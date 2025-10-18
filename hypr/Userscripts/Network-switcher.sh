#!/bin/bash
# /* ---- 💫 https://github.com/xuantruong1612 💫 ---- */  ##
# Script tự động chuyển mạng WiFi nhanh nhất
# Hỗ trợ: nhiều WiFi, BSSID cho mạng trùng tên, signal strength
# Internet 

CONNECTIONS=("Hoang" "here comes the sun" "NGUYEN LU" "VIETTEL")
CHECK_INTERVAL=600 # 10m
LOG_FILE="$HOME/.cache/hypr/logs/network-switcher.log"

mkdir -p "$(dirname "$LOG_FILE")"

while true; do
    BEST_CONN=""
    MIN_LATENCY=9999
    CURRENT_CONN=$(nmcli -t -f NAME connection show --active | head -n1)
    
    declare -A LATENCIES
    declare -A AVAILABLE
    declare -A SIGNALS
    
    AVAILABLE_NETWORKS=$(nmcli -t -f SSID,BSSID,SIGNAL dev wifi list)
    
    for CONN in "${CONNECTIONS[@]}"; do
        if ! nmcli -t con show "$CONN" &>/dev/null; then
            continue
        fi
        
        SSID=$(nmcli -t -f 802-11-wireless.ssid connection show "$CONN" 2>/dev/null | cut -d: -f2)
        BSSID=$(nmcli -t -f 802-11-wireless.bssid connection show "$CONN" 2>/dev/null | cut -d: -f2)
        
        if [ ! -z "$BSSID" ] && [ "$BSSID" != "--" ]; then
            NETWORK_INFO=$(echo "$AVAILABLE_NETWORKS" | grep -i "$BSSID")
            if [ -z "$NETWORK_INFO" ]; then
                AVAILABLE[$CONN]="no"
                continue
            fi
            SIGNAL=$(echo "$NETWORK_INFO" | cut -d: -f3)
            SIGNALS[$CONN]=$SIGNAL
        else
            NETWORK_INFO=$(echo "$AVAILABLE_NETWORKS" | grep "^${SSID}:")
            if [ -z "$NETWORK_INFO" ]; then
                AVAILABLE[$CONN]="no"
                continue
            fi
            BEST_AP=$(echo "$NETWORK_INFO" | sort -t: -k3 -nr | head -n1)
            SIGNAL=$(echo "$BEST_AP" | cut -d: -f3)
            SIGNALS[$CONN]=$SIGNAL
        fi
        
        AVAILABLE[$CONN]="yes"
        
        if [ "$CONN" == "$CURRENT_CONN" ]; then
            AVG_PING=$(ping -c 3 -W 2 8.8.8.8 2>/dev/null | tail -1 | awk -F'/' '{print $5}')
        else
            AVG_PING=$(echo "100 - $SIGNAL" | bc -l)
        fi
        
        if [ ! -z "$AVG_PING" ]; then
            LATENCIES[$CONN]=$AVG_PING
            
            if (( $(echo "$AVG_PING < $MIN_LATENCY" | bc -l) )); then
                MIN_LATENCY=$AVG_PING
                BEST_CONN=$CONN
            fi
        fi
    done
    
    CURRENT_LATENCY="${LATENCIES[$CURRENT_CONN]:-9999}"
    LATENCY_DIFF=$(echo "$CURRENT_LATENCY - $MIN_LATENCY" | bc -l)
    
    if [ "$BEST_CONN" != "$CURRENT_CONN" ] && \
       [ ! -z "$BEST_CONN" ] && \
       [ "${AVAILABLE[$BEST_CONN]}" == "yes" ] && \
       (( $(echo "$LATENCY_DIFF > 10" | bc -l) )); then
        
        OLD_LATENCY="${LATENCIES[$CURRENT_CONN]:-N/A}"
        OLD_SIGNAL="${SIGNALS[$CURRENT_CONN]:-N/A}"
        NEW_SIGNAL="${SIGNALS[$BEST_CONN]:-N/A}"
        
        nmcli con up "$BEST_CONN" &>/dev/null
        
        echo "$(date '+%Y-%m-%d %H:%M:%S'): $CURRENT_CONN (${OLD_LATENCY}ms, ${OLD_SIGNAL}%) → $BEST_CONN (${MIN_LATENCY}ms, ${NEW_SIGNAL}%)" >> "$LOG_FILE"
        
        notify-send -u normal \
            -i network-wireless-signal-excellent \
            "Network Auto-Switched" \
            "From: <b>$CURRENT_CONN</b> (${OLD_LATENCY}ms, ${OLD_SIGNAL}%)\n→ To: <b>$BEST_CONN</b> (${MIN_LATENCY}ms, ${NEW_SIGNAL}%)"
    fi
    
    unset LATENCIES
    unset AVAILABLE
    unset SIGNALS
    
    sleep $CHECK_INTERVAL
done
