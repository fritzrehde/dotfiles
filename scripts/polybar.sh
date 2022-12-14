#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar > /dev/null; do sleep 0.01; done

# Launch bar
polybar top 2> /dev/null
