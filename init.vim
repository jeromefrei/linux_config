call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()

:set encoding=utf-8
:syntax enable
:set relativenumber
:set expandtab
:set shiftwidth=4
:set smarttab
:set tabstop=4
:set background=dark
:set hlsearch
colorscheme gruvbox

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
