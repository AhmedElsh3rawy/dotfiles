#!/bin/bash

WALLPAPER="$HOME/Pictures/wallpapers/alone-in-the-crowd-p5-1920x1080.jpg"

# Check if swww is installed
if ! command -v swww &>/dev/null; then
    notify-send -u critical "Error" "swww is not installed. Please install it first."
    exit 1
fi

# Start swww daemon if not running
if ! pgrep -x "swww-daemon" >/dev/null; then
    swww-daemon
    # Give it a short moment to start up
    sleep 0.5
fi

swww img "$WALLPAPER" \
    --transition-type grow \
    --transition-fps 60 \
    --transition-duration 3
