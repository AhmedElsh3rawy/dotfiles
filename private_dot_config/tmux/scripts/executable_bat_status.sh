#!/bin/bash

DISCHARGING_ICONS=("󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹")

bat="/sys/class/power_supply/BAT0"
capacity=$(cat "$bat/capacity")
status=$(cat "$bat/status")

if [ "$status" = "Charging" ]; then
    icon="󱐌"
elif [ "$status" = "Discharging" ]; then
    index=$(( capacity / 10 ))   # 0–10
    if [ $index -gt 9 ]; then
        index=9
    fi
    icon="${DISCHARGING_ICONS[$index]}"
else
    icon=""
fi

# Set color based on capacity
if [ "$capacity" -le 20 ]; then
    color="#f7768e"
elif [ "$capacity" -le 50 ]; then
    color="#ff9e64"
else
    color="#9ece6a"
fi

# tmux color output
echo "#[fg=#2e2e3e]#[fg=$color,bg=#2e2e3e] $icon $capacity%#[default]"
