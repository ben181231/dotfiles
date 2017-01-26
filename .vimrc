" setup pathogen plugin
execute pathogen#infect()

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility
set nocompatible

" use auto indentation
set autoindent

" avoid adding end-of-file newline
set binary

" configure tab width and indent width
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on
filetype plugin indent on
colorscheme zellner

" turn line numbers on
set number

" turn ruler on
set ruler

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" set dark background
set background=dark

" set <Leader> key (default is '\')
" let mapleader = ","

" quick save
noremap <Leader>s :update<CR>
vnoremap <Leader>s <C-C>:update<CR>
" inoremap <Leader>s <C-O>:update<CR>

" quick quit
noremap <Leader>q :quit<CR>
vnoremap <Leader>q <C-C>:quit<CR>
" inoremap <Leader>q <C-O>:quit<CR>

" quick tab action
map <Leader>w <esc>:tabnext<CR>
map <Leader>b <esc>:tabprevious<CR>
map <Leader>e <esc>:tabe

" quick split move
map <Leader>a <C-W>h
map <Leader>d <C-W>l

" quick shell command
map <F2> <esc>:!

" quick autocomplete
" inoremap <tab><cr> <C-n>
" inoremap <tab><tab> <tab>

" better indent
vnoremap < <gv
vnoremap > >gv

" setup vim-go
let g:go_fmt_command = "goimports"
