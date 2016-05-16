#!/bin/sh

xrdb "$HOME/.Xresources"
xmodmap ~/.xmodmaprc
xsetroot -solid "#dddddd"

unclutter &

## Turn off trackpad when typing.
synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
xbindkeys

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
