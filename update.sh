#!/usr/bin/env bash

# install dependencies
pacaur -S wget curl git binutils oh-my-zsh-git gst-libav gst-plugins-good vimb

fc-cache -f $font_dir

# setup
xrdb ~/.Xresources

