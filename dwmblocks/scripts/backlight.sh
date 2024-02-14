#/bin/bash
output=$(cat /sys/class/backlight/intel_backlight/brightness); max_value=120000; percentage=$((output * 100 / max_value)); echo $percentage" }
echo $output
