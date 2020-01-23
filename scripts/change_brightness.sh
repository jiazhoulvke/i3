#!/usr/bin/env bash

cur_brightness=$(xrandr --current --verbose | grep Brightness | cut -d":" -f2 | grep -o "[^ ]\+\+[]\+\+[]\+*")

case $1 in
	"up")
		if [ `echo $cur_brightness == 1 | bc` -eq 1 ];then
			exit
		fi
		brightness=$(echo "$cur_brightness+0.1" | bc)
		xrandr | grep -v disconnected | grep connected | cut -d" " -f1 | xargs -I{} xrandr --output {} --brightness $brightness
    ;;
	"down")
		if [ `echo $cur_brightness == 0 | bc` -eq 1 ];then
			exit
		fi
		brightness=$(echo "$cur_brightness-0.1" | bc)
		xrandr | grep -v disconnected | grep connected | cut -d" " -f1 | xargs -I{} xrandr --output {} --brightness $brightness
    ;;
	*)
		echo $cur_brightness
    ;;
esac
