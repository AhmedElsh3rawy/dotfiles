#!/bin/bash

# Path to your sxhkd configuration file
SXHKD_CONFIG="$HOME/.config/sxhkd/sxhkdrc"

if [[ ! -f "$SXHKD_CONFIG" ]]; then
	echo "SXHKD configuration file not found!"
	exit 1
fi

# Parse the keybindings
awk '/^[^# \t]+/ { keys=$0 } /^[[:space:]]+[a-zA-Z]/ { action=$0; printf "%-30s -> %s\n", keys, action }' "$SXHKD_CONFIG" |
	rofi -dmenu -i -l 20 -p "Keybindings"
