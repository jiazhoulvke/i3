#!/usr/bin/env bash

# 这里的"ELAN1010:00 04F3:3012 Touchpad"是我的笔记本上的触摸板型号
TouchpadID=$(xinput list | grep -i " touchpad" | cut -d"=" -f2 | awk '{print $1}')

case $1 in
	"enable")
		xinput set-prop "$TouchpadID" "Device Enabled" 1
		exit
    ;;
	"disable")
		xinput set-prop "$TouchpadID" "Device Enabled" 0
		exit
    ;;
esac


status=$(xinput list-props "$TouchpadID" | grep "Device Enabled" | awk '{print $4}')

if [ "$status" == "1" ];then
	xinput set-prop "$TouchpadID" "Device Enabled" 0
else
	xinput set-prop "$TouchpadID" "Device Enabled" 1
fi
