#!/usr/bin/env bash

# install dependencies
pacaur -S wget curl git binutils oh-my-zsh-git gst-libav gst-plugins-good vimb

# create paths that may not exist
mkdir -p ~/.vim/colors 
mkdir -p ~/.config/vimb

# create symlinks
ln -s ~/repos/dotfiles/.bashrc		~/.bashrc
ln -s ~/repos/dotfiles/.vimrc		~/.vimrc
ln -s ~/repos/dotfiles/.Xresources 	~/.Xresources
ln -s ~/repos/dotfiles/.zshrc		~/.zshrc
ln -s ~/repos/dotfiles/.latexmkrc	~/.latexmkrc
ln -s ~/repos/dotfiles/.xinitrc		~/.xinitrc
ln -s ~/repos/dotfiles/vim/cols.vim	~/.vim/colors
ln -s ~/repos/dotfiles/vimb/config	~/.config/vimb

# install vundle and vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# install fonts
font_dir="$HOME/.local/share/fonts"
mkdir -p $font_dir
cp "$HOME/repos/dotfiles/fonts/DejaVu Sans Mono for Powerline.ttf" $font_dir
cp "$HOME/repos/dotfiles/fonts/DejaVu Sans Mono Bold for Powerline.ttf" $font_dir
fc-cache -f $font_dir

# setup
xrdb ~/.Xresources

