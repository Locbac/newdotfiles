#!/bin/bash

brightness_file="/sys/class/backlight/intel_backlight/brightness"
max_brightness=12000

read_brightness() {
	cat "$brightness_file"
}

calculate_percentage() {
	local brightness=$1
	local percentage=$(awk "BEGIN { printf \"%.0f\", ($brightness / $max_brightness) * 10 }")
	echo "$percentage"
}

current_brightness=$(read_brightness)
current_percentage=$(calculate_percentage "$current_brightness")

# echo "Current Brightness: $current_brightness"
echo "$current_percentage%"
