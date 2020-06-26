set nocompatible
filetype off

" Plugins
set rtp+=C:/Users/iainmc04/.vim/bundle/Vundle.vim
let path='C:/Users/iainmc04/.vim/bundle'

call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'eiiches/vim-rainbowbrackets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ThePrimeagen/vim-be-good'

call vundle#end()
filetype plugin indent on

syntax on
imap ii <esc>
set relativenumber
set nu
set encoding=utf-8
let mapleader=" "
" Set cursor in normal mode to small underline
set guicursor+=n:hor20-Cursor/lCursor

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
set undodir=path
set undofile

" Key mappings for using vim-fugitive when mearging 
" gdif
nmap <leader>gd :Gvdiff<CR>
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

" Nerd tree
map <C-o> :NERDTreeToggle<CR>
" Nerd commenter
" map [count]<C-w> <plug>NERDCommenterToggle
