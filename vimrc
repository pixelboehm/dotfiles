"Vim Plugin Section"
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
call plug#end()

"Theming"
let g:airline_theme = 'onedark'
colorscheme gruvbox
let g:gruvbox_italic=1 
set background=dark

"General Functionality"
set mouse=a "enable mouse"
set relativenumber "enable relative line numbers"
set noswapfile "load files without creating a swapfile"
set ruler "show line and column number of cursor"

"Tab Section"
set expandtab "use spaces instead of tabs"
set smarttab "insert blanks in front of line instead of tab"
set shiftwidth=4 "shift is 4 spaces"
