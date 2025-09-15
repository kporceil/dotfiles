#!/bin/bash

if ! pgrep -x "waybar" > /dev/null; then
    exec waybar
fi
