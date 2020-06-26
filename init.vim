set nocompatible
filetype off

" Plugins
set rtp+=Immfiles\bundle\Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
"Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'eiiches/vim-rainbowbrackets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
"Plugin 'tsony-tsonev/nerdtree-git-pluginvim'
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
set undodir=C:/Users/iainmc04/vimfiles/undodir
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

" Nerd tree
map <C-o> :NERDTreeToggle<CR>
" Nerd commenter
" map [count]<C-w> <plug>NERDCommenterToggle

