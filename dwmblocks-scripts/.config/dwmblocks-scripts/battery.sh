#!/usr/bin/env bash
#Battery script for dwmblocks

capacity=$(cat /sys/class/power_supply/BAT0/capacity)

# status=$(cat /sys/class/power_supply/BAT0/status)

# case $status in
# "Full") status="FULL" ;;
# "Discharging") status="DSCH" ;;
# "Charging") status="CHAR" ;;
# "Not charging") status="ERR!" ;;
# "Unknown") status="[??]" ;;
# esac

# printf '%s %s%%' "$status" "$capacity"
printf '%s%%' "$capacity"
