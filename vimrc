" Vim profile
" Author: Zainan Victor Zhou
" Created: 2012-10-02
set shell=/bin/bash
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

" Support for szl
au BufRead,BufNewFile *.szl setfiletype szl
au Filetype szl source ~/.vim/scripts/szl.vim

source ~/.vimrc_vundle

" Set Dart SDK location"
let g:ycm_dart_bin_folder_path = '/usr/lib/google-dartlang/bin'
" Enable support for google3"
let g:ycm_dart_analysis_server_flags = '--google3-package-resolution'
let g:loaded_youcompleteme = 1
set diffopt+=vertical

set laststatus=2
set t_Co=256 " force terminal to enter 256 color

" Put this line to your ~/.vimrc_local to enable a theme
" colorscheme desert-warm-256
" colorscheme ingretu

" Comment the following line this line if you wanna enable powerline fonts
" let g:airline_powerline_fonts = 1

filetype plugin indent on " required!

" source additional source
if filereadable(glob("~/.vimrc_local"))
source ~/.vimrc_local
endif
"
" Brief help
" :BundleList- list configured bundles
" :BundleInstall(!)- install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)- confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


nmap <F8> :TagbarToggle<CR>

if filereadable(glob("~/.vimrc.local")) 
  source ~/.vimrc_local
endif
