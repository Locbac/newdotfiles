#!/bin/bash

# Launch dwm
dwm &

# Wait for dwm to start
sleep 2

# Picom
picom &

# SlStatus
slstatus &

# Execute layout.sh script
/home/amon/.screenlayout/layout.sh

# Wait for layout to finish
sleep 0.5

# Wallpaper
feh --bg-fill /home/amon/proj/wallpapers/macos-mojave-night-lightened-r.jpg

# lx appearance
lxappearance &

# battery
sudo tlp start

# clipboard manager
copyq &

# Xinput
/home/amon/proj/xinput.sh

# syncthing
# syncthing &
