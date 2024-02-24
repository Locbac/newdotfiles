#!/bin/bash

# Launch dwm
dwm &

# Wait for dwm to start
sleep 2

# Picom
# picom --experimental-backends &
picom &

# SlStatus
# slstatus &

# DWMBLOCKS
dwmblocks &

# Execute layout.sh script
$HOME/.screenlayout/layout.sh

# Wait for layout to finish
sleep 0.5

# Wallpaper
feh --bg-fill $HOME/wallpapers/grayscale-macos-mojave-night-lightened-r.jpg

# lx appearance
lxappearance &

# battery
sudo tlp start

# clipboard manager
copyq &

# tasks
clickup &

# Xinput
$HOME/proj/home/xinput.sh

# syncthing
# syncthing &

# Check if the program is already running
if pgrep -x "morgen" >/dev/null; then
	echo "The program is already running."
else
	echo "The program is not running. Starting it now..."
	morgen &
fi
# grayscale
$HOME/proj/home/clones/grayscale-desktop/toggle-monitor-grayscale.sh -g
