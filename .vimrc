syntax on
filetype plugin indent on
set timeoutlen=1000 ttimeoutlen=0
set number
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
