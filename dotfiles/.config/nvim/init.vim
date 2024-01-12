call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Standard settings
set encoding=utf-8
filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab
set smartindent
set hidden
set backspace=indent,eol,start
set number

" Colors
set background=dark
set termguicolors
set t_Co=256
colorscheme gruvbox

let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"

set nobackup
set nowritebackup

set updatetime=300

"set list
"set listchars=tab:>_,eol:¬

" Mapping
let mapleader = ","
nnoremap <leader>f gg=G
inoremap <leader>f :<ESC>gg=G

inoremap jj <ESC>

" TelescopePlug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
lua << EOF
require('telescope').setup{
    defaults = {
        prompt_prefix="$ "
    },
    extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
require('telescope').load_extension('fzf')
EOF
