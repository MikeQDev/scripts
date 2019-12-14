#!/bin/bash

#battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
#percent=$(($(cat /sys/class/power_supply/BAT0/capacity)+2))

percent=`upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -i "percentage" | awk '{print $2}' | cut -b -2`
pstatus=`upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -i "state" | awk '{print $2}'`

#echo $percent
#echo $status

if [ $percent -le 30 ] && [ $pstatus == "discharging" ]
then
  /usr/bin/notify-send "Battery low" "Battery level is ${percent}%!"
fi
