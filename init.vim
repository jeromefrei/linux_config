call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'rust-lang/rust.vim'
" Plug 'neoclide/coc.nvim', {'branch' : 'release'}

call plug#end()

:set encoding=utf-8
:syntax enable
:filetype plugin indent on
:set relativenumber
:set number
:set expandtab
:set shiftwidth=4
:set smarttab
:set tabstop=4
:set background=dark
:set hlsearch
:colorscheme gruvbox

" mapping keys
:let mapleader = ","

:nnoremap <leader>t : NERDTreeToggle<CR>
:nnoremap <leader>f : NERDTreeFocus<CR>
:nnoremap <leader>b : buffers<CR>:buffer<Space>

" format code
:nnoremap <leader>, gg=G
:inoremap <leader>, <ESC>gg=G

" ESC
:inoremap jj <ESC>

":let g:airline_powerline_fonts = 1
:let g:airline_symbols_ascii = 1
:let g:airline#extensions#tabline#enabled = 1
:let g:airline#extensions#tabline#formatter = 'unique_tail'
:let g:airline_theme='tomorrow'
:let g:airline#extensions#tabline#buffer_nr_show = 1
":let g:airline_left_sep = '>>'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
