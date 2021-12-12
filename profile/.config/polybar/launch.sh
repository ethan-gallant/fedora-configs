#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
MONITOR=DP-5 polybar --reload main -c ~/.config/polybar/shapes/config.ini &

echo "Bars launched..."
