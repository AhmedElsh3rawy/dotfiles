#!/bin/bash
# sudo pacman -S acpi
battery=$(acpi | awk '{print substr($4, 1, length($4)-1)}')

status=$(acpi | awk '{print substr($3, 1, length($3)-1)}')

label_chargnig="󰁹󱐋"
label_dischargnig="󰁹"

if [ $status == "Discharging" ]; then
  echo "<span color='#89b4fa'>${label_dischargnig}</span> ${battery}"
else
  echo "<span color='#89b4fa'>${label_chargnig}</span> ${battery}"
fi
