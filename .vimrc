set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'julienr/vim-cellmode'
" end of plugins
call vundle#end()
syntax on
set number
set tabstop=3
set numberwidth=3
set mouse=a
set spell spelllang=en_gb
colorscheme cols
noremap <F7> :tabp <CR>
noremap <F8> :tabn <CR>
noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>
