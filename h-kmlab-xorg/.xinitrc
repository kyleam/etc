#!/bin/sh

xrdb "$HOME/.Xresources"
xmodmap ~/.xmodmaprc
xsetroot -solid "#dddddd"

unclutter &

xrandr --output DVI-1 --off

exec i3
