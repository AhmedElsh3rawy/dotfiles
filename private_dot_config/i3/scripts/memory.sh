#!/bin/bash

mem_total=$(free -m | awk '/Mem:/ {print $2}')

mem_used=$(free -m | awk '/Mem:/ {print $3}')

mem=$(((mem_used * 100) / mem_total))

echo "${mem}%"
