#!/usr/bin/env bash
# amixer sget Master | tail -1 | awk '{print $5 }' | sed 's@\\(\\[\\|\\]\\)@@g'
# percentage=$(echo $(echo "$output" | awk -F'[][]' '/Playback/ {print $2}') | sed '1,2d;$d')
if amixer -c 1 info >/dev/null 2>&1; then
	# Card 1 exists
	output=$(amixer -c 1 sget 'Targus Audio')
	percentage=$(amixer -c 1 sget 'Targus Audio' | grep "Front Left" | awk -F'[][]' '/Playback/ { printf "%s", $2 }' | tr -d '\n')
	if [[ $output == *"[off]"* ]]; then
		echo "Mute"
	else
		echo "$percentage"
	fi
else
	# Card 1 doesn't exist
	output=$(amixer -c 0 sget Master)
	percentage=$(amixer -c 0 sget Master | awk -F'[][]' '/Mono: Playback/ {print $2}')
	if [[ $output == *"[off]"* ]]; then
		echo "Mute"
	else
		echo "$percentage"
	fi
fi
