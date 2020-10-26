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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'stephpy/vim-php-cs-fixer'
call plug#end()


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

set <F8>=<C-v><F8>
nmap <F8> :NERDTreeToggle<CR>

nnoremap <SPACE> <Nop>
let mapleader=" "

" Formatting selected code.
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
nmap <leader>rr <Plug>(coc-rename)

nmap <leader>tb :TagbarToggle<CR>

" split shortcuts
nmap <leader>v :vsp<CR>
nmap <leader>s :sp<CR>

" move selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_extensions = ['branch', 'coc', 'ctrlp', 'fzf', 'keymap', 'tabline', 'tagbar']
let g:airline_powerline_fonts = 1

nmap <C-_> <plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1

if !has('gui_running')
    set t_Co=256
endif

color dracula
let g:airline_theme='lucius'

let g:tagbar_position = 'right'

let g:NERDTreeStatusline = ''
let g:NERDTreeMinimalUI = 1

nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

