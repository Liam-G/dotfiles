#!/bin/bash
echo $1
xrdb $1 && ~/.config/alacritty/xresource-update.sh &&
~/.config/polybar/launch.sh

bash ~/.config/dunst/dunstxresources
