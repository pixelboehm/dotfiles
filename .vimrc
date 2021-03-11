"Vim Plugins"
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
call plug#end()

"Vim functionality"
let g:airline_theme = 'gruvbox'
colorscheme gruvbox
set background=dark
set mouse=a
set number
set tabstop=2
set relativenumber
