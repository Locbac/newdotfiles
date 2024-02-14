#!/bin/bash
# amixer sget Master | tail -1 | awk '{print $5 }' | sed 's@\\(\\[\\|\\]\\)@@g'
output=$(amixer sget Master)
# percentage=$(echo $(echo "$output" | awk -F'[][]' '/Playback/ {print $2}') | sed '1,2d;$d')
percentage=$(amixer sget Master | awk -F'[][]' '/Playback/ { printf "%s", $2 }' | tr -d '\n')
if [[ $output == *"[off]"* ]]; then
	echo "Mute"
else
	echo "$percentage"
fi
