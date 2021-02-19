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

set paste
" source additional source
if filereadable(glob("~/.vimrc_local"))
source ~/.vimrc_local
endif
