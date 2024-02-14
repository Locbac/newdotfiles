#!/bin/bash

# Launch dwm
if pgrep -x dwm >/dev/null; then
else
	dwm &
fi

# Wait for dwm to start
sleep 2

# Picom
sudo pkill picom
picom &

# SlStatus
# slstatus &

# DWMBLOCKS
if pgrep -x dwmblocks >/dev/null; then
  sudo pkill dwmblocks
  dwmblocks &
else
  dwmblocks &
if

# Execute layout.sh script
$HOME/.screenlayout/layout.sh

# Wait for layout to finish
sleep 1

# Wallpaper
feh --bg-fill $HOME/proj/wallpapers/macos-mojave-night-lightened-r.jpg

# lx appearance
lxappearance &

# battery
sudo tlp start

# clipboard manager
if [[ pgrep -x copyq >/dev/null ]]; then
else
  copyq &
fi

# Xinput
$HOME/proj/xinput.sh

# syncthing
# syncthing &
