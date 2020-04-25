set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" Vim config
set number
set encoding=utf-8
set mouse=a
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set expandtab
set wildmenu
set linebreak
set textwidth=100
set showmatch
set showcmd

set splitbelow splitright

set hlsearch
set smartcase
set ignorecase
set incsearch

set shell=/bin/bash

"Switch between different windows by their direction`
map <C-j> <C-w>j| "switching to below window
map <C-k> <C-w>k| "switching to above window
map <C-l> <C-w>l| "switching to right window
map <C-h> <C-w>h| "switching to left window

"Closes vim if the only window open is NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

:filetype plugin on
:syntax on

:filetype indent on

set ruler

set undolevels=1000
set backspace=indent,eol,start

:let mapleader = ","
nnoremap <leader><space> :nohlsearch<CR>

map <leader>o :setlocal spell! spelllang=en_us<CR>

map <C-n> :NERDTreeToggle<CR>

"Recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
