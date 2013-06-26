#!/usr/bin/env bash

cp $PWD/35-droid.conf /etc/fonts/conf.avail/
ln -s /etc/fonts/conf.avail/35-droid.conf /etc/fonts/conf.d/

rm /etc/fonts/conf.d/70-yes-bitmaps.conf
ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
