#!/usr/bin/env bash

# install dependencies
pacaur -S wget curl git binutils oh-my-zsh-git gst-libav gst-plugins-good vimb
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

pacman -S xorg-server xorg-xrdb
fc-cache -f $font_dir

# setup
xrdb ~/.Xresources

