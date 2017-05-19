#!/bin/bash

# dwm
cd ../dwm && git reset --hard HEAD && git clean -fxd
git apply ../patches/dwm-config-20170519-6.1.diff
make && sudo make install

# st
cd ../st && git reset --hard HEAD && git clean -fxd
git apply ../patches/st-config-20170519-0.7.diff
make && sudo make install

cd ..
