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

# Xinput
$HOME/proj/home/xinput.sh

# syncthing
# syncthing &

# grayscale
$HOME/proj/home/clones/grayscale-desktop/toggle-monitor-grayscale.sh -g
