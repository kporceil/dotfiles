#!/bin/bash

value=$(cat /sys/class/backlight/acpi_video0/brightness)
value=$((value + 1))

if [ "$value" -le "$(cat /sys/class/backlight/acpi_video0/max_brightness)" ]
then
	echo $value > /sys/class/backlight/acpi_video0/brightness
fi
