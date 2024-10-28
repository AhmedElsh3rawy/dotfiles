#!/bin/bash

color=94

function get_volume {
  pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1
}

function get_mute {
  pactl get-sink-mute @DEFAULT_SINK@ | grep -Po '(?<=Mute: )(yes|no)'
}

case $BLOCK_BUTTON in
1) # Left click
  if [ $(get_mute) == "yes" ]; then
    pactl set-sink-mute @DEFAULT_SINK@ "0"
  else
    pactl set-sink-mute @DEFAULT_SINK@ "1"
  fi
  ;;
4) # Scroll up
  pactl set-sink-volume @DEFAULT_SINK@ +1%
  ;;
5) # Scroll down
  pactl set-sink-volume @DEFAULT_SINK@ -1%
  ;;
esac

output=""

if [ $(get_mute) == "yes" ]; then
  output="muted"
else
  output="$(get_volume)%"
fi

echo "$output"
