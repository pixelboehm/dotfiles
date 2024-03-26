"Vim Plugin Section"
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
call plug#end()

"Theming"
let g:airline_theme = 'onedark'
silent! colorscheme gruvbox
let g:gruvbox_italic=1 
set background=dark

"General Functionality"
set mouse=a "enable mouse"
set relativenumber "enable relative line numbers"
set noswapfile "load files without creating a swapfile"
set ruler "show line and column number of cursor"
set encoding=utf-8

"Tab Section"
set expandtab "use spaces instead of tabs"
set smarttab "insert blanks in front of line instead of tab"
set shiftwidth=4 "shift is 4 spaces"

" NERDTree Configuration
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" GitGutter
set updatetime=100
