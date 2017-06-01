#!/usr/bin/env bash

# install dependencies
pacaur -S wget curl git binutils oh-my-zsh-git gst-libav gst-plugins-good vimb
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# install helper scripts and symlinks
sudo cp web /usr/bin/

fc-cache -f $font_dir

# setup
xrdb ~/.Xresources

