#!/bin/bash

# Check if card 1 exists
if amixer -c 1 info >/dev/null 2>&1; then
	# Card 1 exists
	if [[ "$1" == "tog" ]]; then
		# Toggle 'Targus Audio'
		amixer -c 1 set 'Targus Audio' toggle
	else
		# Set volume level for 'Targus Audio'
		amixer -c 1 sset 'Targus Audio' "$1"
	fi
	pkill -RTMIN+10 dwmblocks
	# percentage=$(amixer -c 1 sget 'Targus Audio' | grep "Front Left" | awk -F'[][]' '/Playback/ { printf "%s", $2 }' | tr -d '\n')
	# notify-send "Volume:" $percentage
else
	# Card 1 doesn't exist
	if [[ "$1" == "tog" ]]; then
		# Toggle 'Master' on card 0
		amixer -q set Master toggle
	else
		# Set volume level for 'Master' on card 0
		amixer -c 0 sset Master "$1" unmute
	fi
	pkill -RTMIN+10 dwmblocks
fi
