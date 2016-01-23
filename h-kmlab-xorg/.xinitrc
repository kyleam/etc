#!/bin/sh

xrdb "$HOME/.Xresources"

# set up xmodmap; doesn't seem to be loading automatically
xmodmap ~/.xmodmaprc

/usr/bin/conky -q &

xsetroot -solid "#dddddd"

unclutter &

xrandr --output DVI-1 --off

exec awesome
