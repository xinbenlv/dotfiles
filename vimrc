" Vim profile
" Author: Zainan Victor Zhou
" Created: 2012-10-02
syntax on
set sw=4 sts=4 ts=4 et hlsearch 

" Allow backspacing everything in insert mode
set backspace=indent,eol,start

" Show line number
set nu

" Enable filetype plugin
filetype plugin on

filetype plugin indent on " required!

" Setup for powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

set paste
" source additional source
if filereadable(glob("~/.vimrc_local"))
source ~/.vimrc_local
endif
