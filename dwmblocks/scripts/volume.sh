#!/bin/bash
# amixer sget Master | tail -1 | awk '{print $5 }' | sed 's@\\(\\[\\|\\]\\)@@g'
output=$(amixer sget Master)
percentage=$(echo "$output" | awk -F'[][]' '/Playback/ {print $2}')

if [[ $output == *"[off]"* ]]; then
	echo "Mute"
else
	echo "$percentage"
fi
