set nocompatible
filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" Plugin 'ycm-core/YouComplelteMe'
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
Plugin 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'unblevable/quick-scope' 

call vundle#end()
filetype plugin indent on

syntax on
imap ii <esc>
set relativenumber
set nu
set encoding=utf-8
let mapleader=" "
nnoremap <leader>w :w<CR>
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

"Vim files
" Remove tmp save files
set noswapfile
set nobackup
" Undo directory
set undodir=path
set undodir=~/.vim/undodir
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

" New line in normal mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc> 

" Coc
" Using <Tab> and <S-Tab> to navigate autocomplete list.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Enter to confirm selection
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Auto close html tags

" Quickscope 
augroup qs_colors
    highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 
    highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 
augroup END
let g:qs_buftype_blacklist = ['terminal', 'nofile']

" Shift selescted region up and down
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Alt j, k to move one line up or down
nnoremap <A-j> :m +1<CR> 
nnoremap <A-k> :m -2<CR> 
