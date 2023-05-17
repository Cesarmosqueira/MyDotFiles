#!/bin/bash

# Set the wallpaper on the root window
mpv --no-audio --loop-file --no-osc --no-osd-bar --no-video-aspect-override --player-operation-mode=pseudo-gui --wid=0x977 /home/g/Videos/carritos.mp4 &

# Set the wallpaper on the HDMI-1-0 monitor, if connected
if xrandr | grep -q "HDMI-1-0 connected"; then
  HDMI_MONITOR=$(xrandr | grep "HDMI-1-0 connected" | cut -d' ' -f1)
  WID=$(xwininfo -root -tree | grep "i3" | grep "$HDMI_MONITOR" | awk '{print $1}')
  export WID
  xwinwrap -g 1920x1080+1922+0 -ov -ni -s -nf -- mpv --no-audio --loop-file --no-osc --no-osd-bar --no-video-aspect-override --player-operation-mode=pseudo-gui /home/g/Videos/carritos.mp4 &
fi

