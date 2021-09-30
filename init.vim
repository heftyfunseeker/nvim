filetype on
syntax on
set number
set relativenumber
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set splitbelow 
set splitright

set ruler

" Clear highlighting on escape in normal mode
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
tnoremap <Esc> <c-\><c-n>

" set current buffer to hidden instead of closed when opening a new one
set hidden
set history=100
set guifont=FiraCode\ Nerd\ Font\ Mono:h16

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'mileszs/ack.vim'
Plug 'chriskempson/base16-vim'
Plug 'hoob3rt/lualine.nvim'

" fuzzy searching
Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'editorconfig/editorconfig-vim'

" languages
Plug 'chooh/brightscript.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

" Initialize plugin system
call plug#end()

" This line enables the true color support
set termguicolors
colorscheme base16-dracula

" open new split panes to right and below
set splitright
set splitbelow

" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

lua <<EOF
 require'hefty/tree-sitter'
 require'hefty/helpers'
 require'hefty/telescope'
 require'hefty/maps'
 require'hefty/lspconfig'
 require'hefty/cmp'
 require'hefty/lualine'
EOF

"
" Terminal
"
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

nnoremap <c-n> :call OpenTerminal()<CR>

