set nocompatible "Not vi compativle (Vim is king)

""""""""""""""""""""""""""""""""""
" Syntax and indent
""""""""""""""""""""""""""""""""""
syntax on " Turn on syntax highligthing
set showmatch  "Show matching bracets when text indicator is over them

au BufRead,BufNewFile *.py set ft=python syntax=python tabstop=4 shiftwidth=4

colorscheme delek

" Switch on filetype detection and loads 
" indent file (indent.vim) for specific file types
filetype indent on
filetype on
set autoindent " Copy indent from the row above
set si " Smart indent

""""""""""""""""""""""""""""""""""
" Some other confy settings
""""""""""""""""""""""""""""""""""
set nu " Number lines
set hls " highlight search

" Use 2 space instead of tab during format
set expandtab
set shiftwidth=2
set softtabstop=2

set tags=tags;$HOME

" rebind escape to something friendlier
inoremap jk <Esc>
inoremap kj <Esc>

map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-_> :sp <CR>:exec("tag ".expand("<cword>"))<CR>

set listchars=tab:▸\
inoremap <leader>l :set list!<CR>

" move line down
noremap - dd P

let mapleader = ","
" open vimrc in split and source file
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" surround word with quotes
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel  
:nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel  
:nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel  

" disable arrow keys
:noremap <Up> <NOP>
:noremap <Down> <NOP>
:noremap <Left> <NOP>
:noremap <Right> <NOP>
:inoremap <Up> <NOP>
:inoremap <Down> <NOP>
:inoremap <Left> <NOP>
:inoremap <Right> <NOP>
