#!/usr/bin/env bash

# Exit if no argument
if [ -z "$1" ]; then
  echo "Usage: $0 <image>"
  exit 1
fi

IMG="$1"

# Check if file exists
if [ ! -f "$IMG" ]; then
  echo "Error: File '$IMG' not found!"
  exit 1
fi

# Extract top 5 colors from image
magick "$IMG" -resize 50x50 -depth 8 -colors 10 -unique-colors txt:- \
  | awk '{print $3}'
