#! /bin/bash

bspc config top_padding $BSPWM_PANEL_HEIGHT

[[ -e "$BSPWM_VOLUME_FIFO" ]] || mkfifo "$BSPWM_VOLUME_FIFO"
[[ -e "$BSPWM_BATTERY_FIFO" ]] || mkfifo "$BSPWM_BATTERY_FIFO"

~/bin/getbattery-xmobar.sh > "$BSPWM_BATTERY_FIFO" &
~/bin/getvolume.sh > "$BSPWM_VOLUME_FIFO" &

bspc subscribe report | ~/.config/bspwm/bspwm-to-xmobar.sh | xmobar &
