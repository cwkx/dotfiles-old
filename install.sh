#!/usr/bin/env bash

# install dependencies
pacaur -S wget curl git binutils
pacaur -S oh-my-zsh-git

# create symlinks
ln -s ~/repos/dotfiles/.vimrc		~/.vimrc
ln -s ~/repos/dotfiles/.Xresources 	~/.Xresources
ln -s ~/repos/dotfiles/.zshrc		~/.zshrc

# setup
xrdb ~/.Xresources

