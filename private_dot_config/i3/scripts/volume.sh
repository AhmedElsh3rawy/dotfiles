#!/bin/bash

color=94

function get_volume {
	pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1
}

function get_mute {
	pactl get-sink-mute @DEFAULT_SINK@ | grep -Po '(?<=Mute: )(yes|no)'
}

output=""

if [ $(get_mute) == "yes" ]; then
	output=$(echo -e "\033[${color}m \033[0m")
else
	output="$(echo -e "\033[${color}m  \033[0m")$(get_volume)%"
fi

echo "$output"
