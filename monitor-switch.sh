#!/bin/env bash

if [ "$1" != "forked" ]; then
    echo "$(dirname $0)/$(basename $0) forked" | at now
    exit
fi

export DISPLAY=:0
export XAUTHORITY=/home/grepz/.Xauthority

con_mon=$(xrandr | awk -e '$0 ~ /[^(eDP1)][\w0-9-]* connected/ {print $1}')
card_path=/sys/$(udevadm info -q path -n /dev/dri/card0)

DT=$(date)

echo "$DT Monitor connected: '$con_mon'" >> /tmp/udev.echo

if [ -n "$con_mon" ]; then
    xrandr --output eDP1 --auto --output $con_mon --auto --right-of eDP1
else
    xrandr --output eDP1 --auto
fi
