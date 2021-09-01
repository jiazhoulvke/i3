#!/usr/bin/env bash

(sleep 5 && ~/.config/i3/scripts/background.sh) &

TouchpadID=$(xinput list | grep "ELAN1010:00 04F3:3012 Touchpad" | cut -d"=" -f2 | awk '{print $1}')
# 触摸板轻触即为点击
xinput set-prop $TouchpadID "libinput Tapping Enabled" 1
# 触摸板默认为禁用状态
xinput set-prop $TouchpadID "Device Enabled" 0

/home/jiazhoulvke/.screenlayout/two_screen.sh &
# /home/jiazhoulvke/.screenlayout/hdmi.sh &

/home/jiazhoulvke/workspace/go_projects/wechat_notify/wechat_systray &

amixer -c 0 sset 'Headphone',0 100% unmute

(sleep 3 && fcitx ) &

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/mpd.pid ] && mpd

