#!/bin/bash

export XDG_SESSION_TYPE=x11
xrdb -merge $HOME/.config/X11/Xresources && sleep 0.0001
xmodmap $HOME/.config/X11/Xmodmap && sleep 0.0001

$HOME/.config/polybar/launch.sh &
sxhkd &
deadd-notification-center &
numlockx &
greenclip daemon &
nm-applet &
picom -b &
# wallpaper.sh --default &
wallpaper.sh --random &
flameshot &
