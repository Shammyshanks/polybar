#!/usr/bin/env bash

if pgrep -x polybar >/dev/null
then
pkill polybar
fi
while pgrep -x polybar >/dev/null; do sleep 1; done
polybar -c /home/thor/.config/polybar/polybar example &
