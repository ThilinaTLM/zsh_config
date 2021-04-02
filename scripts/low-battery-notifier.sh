#!/bin/sh

BAT_FILE="/sys/class/power_supply/BAT1"

NOTIFIY_LEVEL=30
AUTO_ACTION_AT=10

while :; do
    BAT_LEVEL=$(cat $BAT_FILE/capacity)
    BAT_STATUS=$(cat $BAT_FILE/status)
    
    if [ $BAT_STATUS = "Discharging" ]; then

        if [ $BAT_LEVEL -lt $NOTIFIY_LEVEL ]; then
            notify-send -u critical -a "Warning" "Battery level is low, $BAT_LEVEL%"
            NOTIFIY_LEVEL=$(($NOTIFIY_LEVEL-5))
        fi

        if [ $BAT_LEVEL -lt $AUTO_ACTION_AT ]; then
            notify-send -u critical -a "Warning" "Battery is too low, $BAT_LEVEL%"
            CHOICE=$(echo "Sleep\nHibernate\nShutdown" | dmenu -i -p "ACTION: ")
            case $CHOICE in 
                Hibernate)
                    systemctl suspend
                    ;;
                Shutdown)
                    shutdown now
                    ;;
                *)
                    systemctl suspend
                    ;;
            esac
        fi

        #echo $BAT_LEVEL
        #notify-send -a "Warning" "Battery level is low, $BAT_LEVEL%"
    else
        NOTIFIED=$BAT_LEVEL
    fi
    sleep 1
done

