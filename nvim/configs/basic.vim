set rnu
set nu
syntax enable
set noerrorbells
set scrolloff=7
set backspace=indent,eol,start
set nowrap
set smartcase
set noswapfile
set incsearch
set bg=dark
set hlsearch
set signcolumn=yes
set nu
set termguicolors
highlight SignColumn ctermbg=none

set tabstop=4 softtabstop=4 shiftwidth=4
set autoindent
set noexpandtab
set smartindent
set fileformat=unix
set nocompatible
filetype plugin on
syntax on

set clipboard+=unnamedplus

verbose set cmdheight=1

autocmd Filetype typescript,html,css setlocal ts=2 shiftwidth=2 expandtab
autocmd Filetype vimwiki setlocal nonu nornu signcolumn=no tw=79 ts=2 shiftwidth=2 expandtab

