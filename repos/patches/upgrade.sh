#!/bin/bash

# dwm
cd ../dwm && git reset --hard HEAD && git clean -fxd
git apply ../patches/dwm-config-20170519-6.1.diff
make && sudo make install

# st
cd ../st && git reset --hard HEAD && git clean -fxd
git apply ../patches/st-config-20170519-0.7.diff
make && sudo make install

# dmenu
cd ../dmenu && git reset --hard HEAD && git clean -fxd
git apply ../patches/dmenu-config-20170521-4.7.diff
make && sudo make install

cd ..
