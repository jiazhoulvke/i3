#!/usr/bin/env bash

sleep .5

if ! pgrep -x polybar ; then
	polybar -c ~/.config/i3/polybar/config -r i3bar
else
	pkill polybar
	polybar -c ~/.config/i3/polybar/config -r i3bar
fi
