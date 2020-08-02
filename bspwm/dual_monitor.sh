#!/bin/bash

# set up the two monitors for bspwm
# NOTE This is a simplistic approach because I already know the settings I
# want to apply.
my_laptop_external_monitor=$(xrandr --query | grep 'HDMI2')
if [[ $my_laptop_external_monitor = *connected* ]]; then
    xrandr --output eDP1 --primary --auto --output HDMI2 --auto && ./.fehbg
fi
