#!/bin/bash

# Check for active WiFi connections
WIFI_CONNECTED=$(nmcli -t -f active,ssid dev wifi | egrep '^yes')

case $BLOCK_BUTTON in
1)
  notify-send "Wi-Fi: $(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)"
  ;;
esac

if [[ -z "$WIFI_CONNECTED" ]]; then
  echo "<span color='#89b4fa'>󰤮 </span>"
else
  echo "<span color='#89b4fa'>󰤨  </span>"
fi
