#!/bin/bash
polybar-msg cmd quit
killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar --config=~/.config/polybar/config.ini top_bar
