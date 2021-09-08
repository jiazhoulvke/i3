#!/usr/bin/env bash

fim=$(dbus-send --session --print-reply=literal --dest=org.fcitx.Fcitx5 /controller org.fcitx.Fcitx.Controller1.CurrentInputMethod 2> /dev/null)
input_method=$(echo $fim)

if [[ "$input_method" == "keyboard-us" ]]; then
	echo "EN"
elif [[ "$input_method" == "pinyin" ]]; then
	echo "拼"
else
	echo "EN"
fi

