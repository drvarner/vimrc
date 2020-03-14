" ------------ nublord .vimrc ------------- "
" -- Author: David Varner ----------------- "

set nocompatible

" Setup vim-plug
call plug#begin('~/.vim/plugged')

" themes
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'

" other
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'

call plug#end()

" ensure type detection on
filetype plugin indent on

set number

syntax on
set background=dark
colorscheme codedark

set backspace=indent,eol,start
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4

" remaps
map <C-n> :NERDTreeToggle<CR>
" -- splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" NERDTree
let NERDTreeMinimalUI = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" GitGutter
set updatetime=250
let g:gitgutter_max_signs=500
" -- no mapping
let g:ggitgutter_map_keys=0
" -- colors
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" Airline
let g:airline#extensions#tabline#enabled = 1
