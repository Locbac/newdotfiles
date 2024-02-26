#/bin/sh
touchpad_id=$(xinput list | grep -i 'SYNA2393:00 06CB:7A13 Touchpad' | awk '{print $6}' | awk -F= '{print $2}')
xinput set-prop $touchpad_id "libinput Tapping Enabled" "1"
xinput set-prop $touchpad_id "libinput Tapping Drag Enabled" "1"
xinput set-prop $touchpad_id "libinput Natural Scrolling Enabled" "1"
xinput set-prop $touchpad_id "libinput Scrolling Pixel Distance" "10"
xinput set-prop $touchpad_id "libinput Accel Speed" "0.31"
xinput set-prop $touchpad_id "libinput Middle Emulation Enabled" "1"
# xinput set-prop 24 "libinput Accel Profile Enabled" "0"
# mxmaster_id=$(xinput list | grep -i -E 'mx master 3|logitech mx master 3' | awk '{print $6}' | awk -F= '{print $2}')
# xinput set-prop 21 "libinput Accel Speed" "-1"
mxmaster_id=$(xinput | grep "MX Master 3" | awk -F'=' '{print $2}' | awk '{print $1}' | head -n 1)
xinput set-prop $mxmaster_id "libinput Accel Speed" "-1"
