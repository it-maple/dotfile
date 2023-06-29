#!/bin/bash
#

menu=$(echo " PowerOff+﫼 LogOut" | rofi -sep '+' -dmenu -width 10 -line-padding 4 -padding 20 -i -p 'Power')

case "$menu" in
    *PowrOff) /usr/bin/poweroff ;;
    *LogOut) i3-msg exit ;;
esac
