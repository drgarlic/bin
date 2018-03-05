#!/usr/bin/env bash
#
# Description: Display the remaining time of the battery
# Dependency: acpi

bat=`acpi | awk '{ print $5 }'`

h=`echo $bat | cut -d ":" -f1`
h=$(( 10#$h ))
m=`echo $bat | cut -d ":" -f2`
m=$(( 10#$m ))

notf "Remaining: ${h}h ${m}mn"
