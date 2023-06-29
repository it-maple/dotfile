#! /bin/bash

xautolock -time 30 \
    -locker ~/.config/i3/scripts/lock.sh \
    # -notify 2400 \
    # -notifier "xset dpms force off" \
    &
