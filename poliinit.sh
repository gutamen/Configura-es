#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar
export SEPARATOR="$(echo -ne "\uead1")"
export MONITOR="$(echo -ne eDP-1-1)"
export CPUIMG="%{T2}$(echo -ne "\Uf0ee0")%{T1} "
export MEMORY="%{T2}$(echo -ne "\Uf035b")%{T1} "
export MUTED="%{T4}$(echo -e "\Uf04c4")%{T1}"
export SOUND="%{T2}$(echo -e "\Uf071f")%{T1} "
export FULLBATTERY="%{T4}$(echo -e "\Uf12a3")%{T1} "
export CHARGEBATTERY="%{T4}$(echo -e "\Uf12a6")%{T1} "
export LOWBATTERY="%{T4}$(echo -e "\Uf12a2")%{T1} "


# Launch bar1 and bar2
echo "---" 
polybar example -c /home/gustavo/.config/polybar/config.ini
export MONITOR="$(echo -ne HDMI-1-1)"
#if $(polybar --list-monitors | cut -d":" -f1); 
#then
#    polybar example -c /home/gustavo/.config/polybar/config.ini
#fi
polybar example -c /home/gustavo/.config/polybar/config.ini
echo "Bars launched..."
