#!/bin/sh

xrdb "$HOME/.Xresources"
xmodmap ~/.xmodmaprc
xsetroot -solid "#dddddd"

/usr/bin/conky -q &

unclutter &

## Turn off trackpad when typing.
synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
xbindkeys

exec awesome
