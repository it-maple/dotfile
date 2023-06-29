#!/bin/bash

## Created By Aditya Shakya

#MENU="$(rofi -sep "|" -dmenu -i -p 'System' -location 5 -xoffset -14 -yoffset -52 -width 10 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 <<< " Lock| Logout| Reboot| Shutdown")"
MENU="$(rofi -sep "|" -dmenu -i -p 'System' -location 3 -xoffset -10 -yoffset 32 -width 10 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 <<< " Lock| Logout| Reboot| Shutdown")"
            case "$MENU" in
                *Lock) i3lock-fancy -g -p -d -t 流泉得月光，化为一溪雪;;
                *Logout) i3-msh exit;;
                *Reboot) systemctl reboot ;;
                *Shutdown) systemctl -i poweroff
            esac
