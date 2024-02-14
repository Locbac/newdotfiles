#!/bin/bash

# Launch dwm
dwm &

# Wait for dwm to start
sleep 2

# Picom
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
feh --bg-fill $HOME/proj/wallpapers/grayscale-macos-mojave-night-lightened-r.jpg

# lx appearance
lxappearance &

# battery
sudo tlp start

# clipboard manager
copyq &

# Xinput
$HOME/proj/xinput.sh

# syncthing
# syncthing &
