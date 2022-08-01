#!/bin/bash

if [[ $(pgrep eww) ]]; then
    eww open --toggle powermenu -c ~/.config/eww &
else
    eww daemon &
    sleep 0.3 
    eww open --toggle powermenu -c ~/.config/eww &
fi

