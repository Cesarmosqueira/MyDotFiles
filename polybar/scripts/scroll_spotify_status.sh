#!/bin/bash

# see man zscroll for documentation of the following parameters

get_spotify_status="/home/g/.config/polybar/scripts/get_spotify_status.sh"
zscroll -l 30 \
        --delay 0.1 \
        --scroll-padding "  " \
        --match-command "$get_spotify_status --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "$get_spotify_status" &

wait