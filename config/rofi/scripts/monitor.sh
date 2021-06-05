#!/bin/bash

seleted=$(echo "Laptop Only
HDMI Only
Display Port Only
Dual Monitor" | rofi -dmenu -p "Select Monitor Setup")

echo You Picked: " $selected"

if [ "$selected" == "Laptop Only" ]; then
    xrandr --output eDP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-0 --off --output DP-1-2 --off --output DP-1-1 --off --output DP-0 --off
    exit
fi
if [ "$selected" == "HDMI Only" ]; then
    exit
fi
if [ "$selected" == "Display Port Only" ]; then
    exit
fi
if [ "$selected" == "Dual Monitor" ]; then
    xrandr --output eDP-1-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --mode 1920x1080 --pos 3840x0 --rotate normal --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-1 --off --output DP-0 --off
    exit
fi