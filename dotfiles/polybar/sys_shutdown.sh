#!/bin/bash
choice=$(yad --title="Shutdown or Restart" --text="Do you want to shutdown, restart, or close the menu?" \
       --button="Shutdown:0" --button="Restart:1" --button="Close:2" \
       --width=300 --height=10 \
       --window-icon="system-shutdown" \
       --text-align=center \
       --borders=10 \
       --background="#282828" \
       --foreground="#d4be98")

case $? in
    0)
        systemctl poweroff
        ;;
    1)
        systemctl reboot
        ;;
    2)
        echo "Menu closed without action."
        ;;
esac

