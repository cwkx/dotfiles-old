set nocompatible
filetype off
filetype plugin indent on
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set mouse=a
set spell spelllang=en_gb
set listchars=tab:--,trail:~,extends:>,precedes:<
set list
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
