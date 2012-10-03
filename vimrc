" Vim profile
" Author: Zainan Victor Zhou
" Created: 2012-10-02


syntax on
" TODO what's this
set nocompatible
" TODO what's this
set sw=4 sts=4 ts=4 et hlsearch 

" Enable filetype plugin
filetype plugin on

" Toggle to change paste mode    
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Support for znote
au BufRead,BufNewFile *.znote setfiletype znote
au Filetype znote source ~/.vim/scripts/znote.vim


