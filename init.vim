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
noremap <c-_> :Telescope current_buffer_fuzzy_find sorting_strategy=ascending <CR> 

" .config/nvim/lua/test/jayfray.lua
lua require "test.jayfray"

call plug#end()

lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
--   cmp.setup.cmdline({ '/', '?' }, {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = {
--       { name = 'buffer' }
--     }
--   })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--   cmp.setup.cmdline(':', {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = cmp.config.sources({
--       { name = 'path' }
--     }, {
--       { name = 'cmdline' }
--     })
--   })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['clangd'].setup {
    capabilities = capabilities
  }
EOF
