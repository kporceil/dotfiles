#!/bin/bash

value=$(cat /sys/class/backlight/acpi_video0/brightness)
value=$((value - 1))

if [ "$value" -ge "0" ]
then
	echo $value > /sys/class/backlight/acpi_video0/brightness
fi
