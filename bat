#!/usr/bin/env bash
#
# Description: Display the battery level or status
# Dependency: acpi

percent=`cat /sys/class/power_supply/BAT0/capacity`
power=`cat /sys/class/power_supply/BAT0/status`
	
if [[ $power == "Charging" ]]
then
	echo "eat"
elif [[ $percent == 100 ]]
then
	echo "ful"
else
	echo ${percent}%
fi
