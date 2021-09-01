#!/usr/bin/env bash

background=$(find  ~/.config/i3 -name "*_background.*")

if [ -z $background ]; then
	feh --bg-scale $(find ~/.config/i3/ -name "background.*" | head -n 1)
else
	feh --bg-scale $background
fi
