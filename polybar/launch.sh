#!/usr/bin/env sh

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
# polybar -c ~/.config/polybar/config.ini eDP1 &
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload example &
done
