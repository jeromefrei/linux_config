call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'nvim-tree/nvim-web-devicons'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'sharkdp/fd'
Plug 'nvim-lua/plenary.nvim'

" Used by Telescope :Telescope live_grep
Plug 'BurntSushi/ripgrep'

" Native Lsp
Plug 'neovim/nvim-lspconfig' 

" LSP autocomplete
Plug 'hrsh7th/nvim-cmp' 
Plug 'hrsh7th/cmp-nvim-lsp' 
Plug 'hrsh7th/cmp-buffer' 
Plug 'hrsh7th/cmp-path' 
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

"Plug 'fannheyward/telescope-coc.nvim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Standard settings
set encoding=utf-8
filetype plugin indent on
syntax on

set tabstop=4
set cursorline
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
let $RC="$HOME/.vim/vimrcle" 

set nobackup
set nowritebackup
set autoread
set autowrite

set updatetime=300

"set list
"set listchars=tab:>_,eol:¬

" Mapping
let mapleader = ","
nnoremap <leader>ft gg=G
inoremap <leader>ft :<ESC>gg=G

inoremap jj <ESC>
noremap <leader>fd :Telescope find_files<CR>
inoremap <leader>fd :<ESC>:Telescope find_files<CR>
noremap <leader>fg :Telescope live_grep<CR>
inoremap <leader>fg :<ESC>:Telescope live_grep<CR>
noremap <leader>fs :Telescope grep_string search=
inoremap <leader>fs :<ESC>:Telescope grep_string search=
noremap <leader>fc :Telescope find_files cwd=
inoremap <leader>fc <ESC>:Telescope find_files cwd=
noremap <leader>fb :Telescope buffers<CR>
inoremap <leader>fb <ESC>Telescope buffers<CR>
noremap <leader>fo :Telescope oldfiles<CR>
inoremap <leader>fo <ESC>:Telescope oldfiles<CR>

" .config/nvim/lua/test/jayfray.lua
" lua require "test.jayfray"
lua require "init_modules"
