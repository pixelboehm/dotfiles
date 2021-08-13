"Vim Plugins"
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
call plug#end()

"Vim functionality"
let g:airline_theme = 'onedark'
colorscheme gruvbox
let g:gruvbox_italic=1 
set background=dark
set mouse=a
set number
set tabstop=8 
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab
set relativenumber
set noswapfile
set ruler
