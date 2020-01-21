#!/usr/bin/env bash

# 这里的TouchpadID可以通过xinput list 获取，带有Touchpad的就是触摸板
TouchpadID=15

status=$(xinput list-props $TouchpadID | grep "Device Enabled" | awk '{print $4}')

if [ $status == "1" ];then
	xinput set-prop $TouchpadID "Device Enabled" 0
else
	xinput set-prop $TouchpadID "Device Enabled" 1
fi
