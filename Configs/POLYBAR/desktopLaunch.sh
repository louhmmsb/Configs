#!/usr/bin/env sh

# Terminate already running bar instances
# kill -9 $(pgrep -f 'polybar') >/dev/null 2>&1
killall -q polybar

polybar-msg cmd quit >/dev/null 2>&1

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# polybar desktopleft &
# polybar desktopmiddle &
# polybar desktopright &
polybar desktopbig &
