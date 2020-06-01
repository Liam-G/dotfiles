#!/bin/sh

# System tray
if [ -z "$(pgrep trayer)" ] ; then
    trayer --edge top \
           --align right \
           --widthtype percent \
           --height 24 \
           --alpha 0 \
           --transparent true \
           --width 5 \
           --tint 0x282c34 &
fi

# Power manager
if [ -z "$(pgrep xfce4-power-manager)" ] ; then
    xfce4-power-manager &
fi

# Taffybar
# if [ -z "$(pgrep taffybar)" ] ; then
#     taffybar &
# fi

# Redshift
if [ -z "$(pgrep redshift)" ] ; then
    redshift &
fi

# Autolock
# if [ -z "$(pgrep xautolock)" ] ; then
    # xautolock -time 1 -locker "if ! grep 'RUNNING' /proc/asound/card*/pcm*/sub*/status;then xscreensaver-command -lock; else echo 'Sound on'; fi"
# fi

# Screensaver
if [ -z "$(pgrep xscreensaver)" ] ; then
    xscreensaver -no-splash &
fi

# compton
if [ -z "$(pgrep compton)" ] ; then
    compton -b
fi

#python3 ~/HDD/Images/Wallpapers/redditScrapes/WallpaperScraper.py
#wal -i ~/HDD/Images/Wallpapers/ --saturate 0.7 --backend colorz
wal -i ~/HDD/Images/Wallpapers --backend colorz
bash ~/.config/dunst/dunstwal &
#systemctl --user start xfce4-notifyd

# Wallpaper
if [ -z "$(pgrep feh)" ] ; then
    ~/.fehbg &
fi
# Network Applet
if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet &
fi

# Google Drive
if [ -z "$(pgrep insync)" ] ; then
    insync start &
fi

# Polybar
if [ -z "$(pgrep polybar)" ] ; then
    bash ~/.config/polybar/launch.sh &
fi

# xbindkeys
xbindkeys
