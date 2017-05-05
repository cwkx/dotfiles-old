execute pathogen#infect()
syntax on
filetype plugin indent on
"set nowrap
set number
set numberwidth=3
set mouse=a
set spell spelllang=en_gb
noremap <F7> :tabp <CR>
noremap <F8> :tabn <CR>
let base16colorspace=256
colorscheme base16-tomorrow-night
noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
