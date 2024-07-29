#!/bin/bash
# sudo pacman -S acpi
battery=$(acpi | awk '{print substr($4, 1, length($4)-2)}')

status=$(acpi | awk '{print substr($3, 1, length($3)-1)}')

label_chargnig="󰂅"
label_dischargnig="󰁹"

if [ $status == "Discharging" ]; then
	echo "$label_dischargnig ${battery}%"
else
	echo "$label_chargnig ${battery}%"
fi
