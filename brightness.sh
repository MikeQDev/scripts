#!/bin/bash

brightness=$1

laptop=LVDS-1
top=VGA-1
bottom=HDMI-1

xrandr --output $laptop --brightness $brightness
xrandr --output $top --brightness $brightness
xrandr --output $bottom --brightness $brightness

