#!/bin/sh

xrdb "$HOME/.Xresources"
xmodmap ~/.xmodmaprc
xsetroot -solid "#dddddd"

/usr/bin/conky -q &

unclutter &

xrandr --output DVI-1 --off

exec awesome
