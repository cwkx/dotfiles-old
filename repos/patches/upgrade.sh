#!/bin/bash

# dwm
cd ../dwm && git reset --hard HEAD && git clean -fxd
git apply ../patches/dwm-config-20170519-6.1.diff
make && sudo make install

# st
cd ../st && git reset --hard HEAD && git clean -fxd
git apply ../patches/st-scrollback-20170329-149c0d3.diff
git apply ../patches/st-scrollback-mouse-20170427-5a10aca.diff
git apply ../patches/st-config-20170519-0.7.diff
make && sudo make install

# dmenu
cd ../dmenu && git reset --hard HEAD && git clean -fxd
git apply ../patches/dmenu-config-20170521-4.7.diff
make && sudo make install

# dstatus
cd ../dstatus
gcc -Wall -pedantic -std=c99 -lX11 dstatus.c -o dstatus
sudo mv dstatus /usr/bin

cd ..
