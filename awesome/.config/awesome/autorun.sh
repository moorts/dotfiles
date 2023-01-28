#!/usr/bin/env bash

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}

setxkbmap -option grp:alt_shift_toggle
setxkbmap -option ctrl:nocaps
xrandr --output DVI-D-0 --off --output HDMI-0 --mode 3440x1440 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --mode 1920x1080 --pos 0x180 --rotate normal --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off
