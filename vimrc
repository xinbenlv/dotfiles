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

" Support for szl
au BufRead,BufNewFile *.szl setfiletype szl
au Filetype szl source ~/.vim/scripts/szl.vim


" Support for vundle
 set nocompatible " be iMproved
 filetype off " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'L9'


" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'

" Markdown Vim Mode
Bundle 'git://github.com/plasticboy/vim-markdown.git' 

" FuzzyFinder provides convenient ways to quickly reach the buffer/file/command/bookmark/tag you want.
Bundle 'FuzzyFinder'

" The Command-T plug-in provides an extremely fast, intuitive mechanism for opening files with a minimal number of keystrokes. 
Bundle 'Command-T'

" Grammar checker for English, French, German (etc.) in Vim
Bundle 'LanguageTool'

" 
Bundle 'bling/vim-airline'

" A git command wrapper for vim
Bundle 'tpope/vim-fugitive.git'

" Nerdtree: file system browser
Bundle 'scrooloose/nerdtree' 
" NERDTree and tabs together in Vim, painlessly

Bundle 'jistr/vim-nerdtree-tabs' 

" Vim plugin for intensely orgasmic commenting
Bundle 'scrooloose/nerdcommenter'

" Perform all your vim insert mode completions with Tab
Bundle 'ervandew/supertab' 

" The file manager within Vim!
Bundle 'mbbill/VimExplorer'


" a bunch of colorschemes + a gui menu listing them
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ColorSchemeMenuMaker'
Bundle 'desert-warm-256'
Bundle 'gmarik/ingretu'
Bundle 'jceb/vim-orgmode'
Bundle 'tpope/vim-speeddating'
Bundle 'majutsushi/tagbar'
Bundle 'airblade/vim-gitgutter'
set laststatus=2
set t_Co=256 " force terminal to enter 256 color

" Put this line to your ~/.vimrc_local to enable a theme
" colorscheme desert-warm-256
" colorscheme ingretu

" Comment the following line this line if you wanna enable powerline fonts
let g:airline_powerline_fonts = 1

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


