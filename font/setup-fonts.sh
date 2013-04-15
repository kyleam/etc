#!/usr/bin/env bash
ln -s ~/etc/os-config/font-tweaks/35-droid.conf /etc/fonts/conf.d

rm /etc/fonts/conf.d/70-yes-bitmaps.conf &&
    ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
