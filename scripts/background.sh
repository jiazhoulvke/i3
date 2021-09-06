#!/usr/bin/env bash

background=$(find ~/.config/i3/assets/images/background/ -type f -name "*.jpg" -or -name "*.png" | grep -v default.jpg)

if [ -z $background ]; then
	feh --bg-scale ~/.config/i3/assets/images/background/default.jpg
else
	feh --bg-scale $background
fi
