#!/bin/sh

xrdb "$HOME/.Xresources"

# set up xmodmap; doesn't seem to be loading automatically
xmodmap ~/.xmodmaprc

# stop annoying beep
# some reason couldn't get blacklisting working in /etc/modprobe.d
# added this command in sudoers so don't need password
sudo modprobe -r pcspkr

/usr/bin/conky -q &

emacs --daemon &

sh ~/.fehbg &

unclutter &

## turn off trackpad when typing
synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
xbindkeys

exec awesome
