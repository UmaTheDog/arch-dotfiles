#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Suspend" | wofi -i --dmenu | awk '{print tolower($2)}' )

case $op in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $op
                swaylock
                swaymsg exit
                ;;
esac
