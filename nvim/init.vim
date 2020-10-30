set nocompatible
set path=+**
set wildmenu
set autoindent
set shiftwidth=4
set softtabstop=4
set smartindent
set mouse=a
set number
set expandtab
set smarttab
set noshowmode
set showmatch
set hlsearch
set cmdheight=2
set updatetime=300
syntax on

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'stephpy/vim-php-cs-fixer'
call plug#end()

" remap leader to space
nnoremap <SPACE> <Nop>
let mapleader=" "

" load plugin specific configuration files
runtime! plugins.d/*.vim
" load custom key bindings
runtime shortcuts.vim

color dracula

