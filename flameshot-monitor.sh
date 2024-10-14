#!/bin/bash

dbus-monitor --monitor "sender='org.flameshot.Flameshot',member='Notify'" |
while read -r line; do
    echo $line | grep Capture && bash /home/kingcu/scripts/screendrop.sh
done
