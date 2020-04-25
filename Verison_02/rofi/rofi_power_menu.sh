#!/bin/bash

res=$(echo "About This Computer|Sleep|Restart...|Shut Down...|Lock Screen|Log Out|" | rofi -sep "|" -dmenu -i -p 'Power Menu' "" -width 18 -lines 6 -hide-scrollbar -eh 1 -location 1 -yoffset 22 -xoffset 10 -padding 15 -font "SF Pro Text 10" -theme theme)
 
if [ "$res" = "Lock Screen" ]; then
    source "/home/josh/.config/i3/lock.sh"
fi
if [ "$res" = "Log Out" ]; then
    i3-msg exit
fi
if [ $res = "Restart..." ]; then
    systemctl reboot
fi
if [ "$res" = "Shut Down..." ]; then
    systemctl poweroff
fi
if [ $res = "Sleep" ]; then
    systemctl suspend
fi
if [ "$res" = "About This Computer" ]; then
    urxvt -hold -e neofetch
fi
exit 0
