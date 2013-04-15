#!/usr/bin/env bash

# https://wiki.archlinux.org/index.php/Touchpad_Synaptics#Software_Toggle

synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
