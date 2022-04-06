call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

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

" mapping keys
:let mapleader = ","

:nnoremap <leader>t : NERDTreeToggle<CR>
:nnoremap <leader>b :buffers<CR>:buffer<Space>
:let g:airline_powerline_fonts = 1
:let g:airline#extensions#tabline#enabled = 1
:let g:airline#extensions#tabline#formatter = 'unique_tail'
