#!/bin/bash

BATTERY_LOW=20
BATTERY_CRITICAL=10
CHECK_INTERVAL=400
NOTIFIED_LOW=false
NOTIFIED_CRITICAL=false

while true; do
    for i in {0..3}; do
        if [ -f /sys/class/power_supply/BAT$i/capacity ]; then
            battery_level=$(cat /sys/class/power_supply/BAT$i/status)
            battery_capacity=$(cat /sys/class/power_supply/BAT$i/capacity)
            
            if [ "$battery_level" == "Discharging" ]; then
                
                # Critical
                if [ "$battery_capacity" -le "$BATTERY_CRITICAL" ]; then
                    if [ "$NOTIFIED_CRITICAL" = false ]; then
                        notify-send -u critical -i battery-caution -t 0 \
                            "⚠ Battery: ${battery_capacity}%" \
                            "PLUG IN CHARGER NOW!"
                        
                        paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga 2>/dev/null &
                        NOTIFIED_CRITICAL=true
                    fi
                    
                # Low
                elif [ "$battery_capacity" -le "$BATTERY_LOW" ]; then
                    if [ "$NOTIFIED_LOW" = false ]; then
                        notify-send -u normal -i battery-low \
                            "Battery: ${battery_capacity}%" \
                            "Please connect charger"
                        
                        paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga 2>/dev/null &
                        NOTIFIED_LOW=true
                    fi
                fi
                
            else
                NOTIFIED_LOW=false
                NOTIFIED_CRITICAL=false
            fi
        fi
    done
    
    sleep $CHECK_INTERVAL
done
