set nocompatible
filetype off

" Plugins
set rtp+=~/vimfiles/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'eiiches/vim-rainbowbrackets'

call vundle#end()

syntax on
imap ii <esc>
set relativenumber
set nu
set encoding=utf-8
"let mapleader=" "

set noerrorbells
set vb t_vb=

" Searching
set hlsearch
set incsearch
set ignorecase 
set smartcase
set showmatch

" Vim files
" Remove tmp save files
set noswapfile
set nobackup
" Undo directory
set undodir=~/vimfiles/undodir
set undofile

" Key mappings for using vim-fugitive when mearging 
" gf take left 
nmap <leader>gf :diffget //3<CR>
" gh take right 
nmap <leader>gh :diffget //2<CR>
" gs to access git from vim
nmap <leader>gs :G<CR>

" Page layout
set nowrap
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set formatoptions=tcqrn1
colorscheme gruvbox 
set background=dark

" Tab to spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 


