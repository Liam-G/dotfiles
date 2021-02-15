#!/bin/sh
if [ -z "$(pgrep sxhkd)" ] ; then
	sxhkd &
fi

if [ -z "$(pgrep flameshot)" ] ; then
	flameshot &
fi

if [ -z "$(pgrep compton)" ] ; then
	compton &
fi

if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet &
fi

# Polybar
if [ -z "$(pgrep polybar)" ] ; then
    bash ~/.config/polybar/launch.sh &
#wal -i ~/HDD/Images/Wallpapers/ --saturate 0.7 --backend colorz
fi

fg &

#if [ -z "$(pgrep dunst)" ] ; then
#	~/.config/dunst/dunstwal &
#fi

numlockx &
~/.fehbg &
autorandr -c 
