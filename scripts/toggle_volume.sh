#!/usr/bin/env bash

cur_volume=$(amixer sget Master | tail -n 1 | awk '{print $4}' | tr -d "\[\]%")

case $1 in
	"up")
		amixer sset Master 5%+
		exit
    ;;
	"down")
		amixer sset Master 5%-
		exit
    ;;
esac

if [ "$cur_volume" == "0" ];then
	amixer sset Master 60%
else
	amixer sset Master 0%
fi
