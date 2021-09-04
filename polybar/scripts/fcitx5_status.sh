#!/usr/bin/env bash

fim=$(dbus-send --session --print-reply=literal --dest=org.fcitx.Fcitx5 /controller org.fcitx.Fcitx.Controller1.CurrentInputMethod)
input_method=$(echo $fim) #trim space

if [[ "$input_method" == "keyboard-us" ]]; then
	echo "EN"
elif [[ "$input_method" == "pinyin" ]]; then
	echo "拼"
else
	echo "EN"
fi

