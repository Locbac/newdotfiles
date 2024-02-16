#/bin/bash
remaining=$(acpi | grep -oP '\d{2}:\d{2}:\d{2}')
echo $remaining
