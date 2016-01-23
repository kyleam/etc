#!/bin/sh

xrdb "$HOME/.Xresources"

# set up xmodmap; doesn't seem to be loading automatically
xmodmap ~/.xmodmaprc

/usr/bin/conky -q &

xsetroot -solid "#dddddd"

unclutter &

## turn off trackpad when typing
synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
xbindkeys

exec awesome
