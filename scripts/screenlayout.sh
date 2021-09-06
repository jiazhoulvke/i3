#!/usr/bin/env bash

if [ -f "$HOME/.screenlayout/SCREEN_LAYOUT" ]; then
    layout=$(head -n 1 "$HOME/.screenlayout/SCREEN_LAYOUT")
    if [[ -n $layout ]]; then
        "$layout"
    fi
fi
