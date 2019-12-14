#!/bin/bash


laptop=LVDS-1
top=VGA-1
bottom=HDMI-1
xrandr --output $laptop --mode 1366x768
xrandr --output $bottom --mode 1920x1080 
xrandr --output $bottom --right-of $laptop 
if [ $# -gt 0 ]; then
  xrandr --output $top --mode 1920x1080 
  xrandr --output $top --above $bottom 
else
  xrandr --output $top --off
fi
feh --bg-fill ~/.wallpaper/1e1e1e.png 
