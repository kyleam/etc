#!/bin/sh

xrdb "$HOME/.Xresources"
xmodmap ~/.xmodmaprc
xsetroot -solid "#dddddd"

unclutter &

xrandr --output DVI-1 --off

case $WM in
    openbox)
        exec openbox
        ;;
    i3)
        exec i3
        ;;
    *)
        exec i3
        ;;
esac
