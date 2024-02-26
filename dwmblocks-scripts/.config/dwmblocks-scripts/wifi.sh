#!/bin/bash

interface="wlan0" # Replace with your wireless interface name

# essid=$(iwconfig "$interface" | grep ESSID | awk -F ":" '{print $2}' | tr -d '"')
essid=$(iwconfig "$interface" | grep ESSID | awk -F ":" '{print $2}' | tr -d '"')

echo "$essid"
