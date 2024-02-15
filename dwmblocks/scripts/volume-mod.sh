#!/bin/bash

# Check if card 1 exists
if amixer -c 1 info >/dev/null 2>&1; then
	# Card 1 exists, modify 'Targus Audio'
	amixer -c 1 sset 'Targus Audio' "$1"
	pkill -RTMIN+10 dwmblocks
else
	# Card 1 doesn't exist, modify 'Master' on card 0
	amixer -c 0 sset Master "$1" unmute
	pkill -RTMIN+10 dwmblocks
fi
