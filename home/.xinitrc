#!/bin/sh

# Source global X session scripts.
if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# feh --bg-fill "$HOME/pictures/wallpaper.png"

# xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

# redshift -PO 3000

# day() {
# 	day="$(date '+%-d')"
#
# 	case "$day" in
# 	1 | 21 | 31) echo "${day}st" ;;
# 	2 | 22) echo "${day}nd" ;;
# 	3 | 23) echo "${day}rd" ;;
# 	*) echo "${day}th" ;;
# 	esac
# }
#
# battery() {
# 	battery='/sys/class/power_supply/BAT0'
#
# 	if [ -d "$battery" ]; then
# 		echo ' | '
#
# 		if grep -q 'Charging' "$battery/status"; then
# 			echo '+'
# 		fi
#
# 		cat "$battery/capacity"
#
# 		echo '%'
# 	fi
# }

# while true; do
# 	xprop -root -set WM_NAME "$(date "+%A, %B $(day) %-H:%M")$(battery)"
# 	sleep 15
# done &

# st &

exec dwm
