" Vim syntax file
" " Language: ZZN Notes
" " Maintainer: Zainan Victor Zhou zzn@zzn.im
" " Latest Revision: 2012-10-02

" No number
set nonu
set et ts=4 

" Keywords
if exists("b:current_syntax")
  finish
endif
syn case match

" Keywords
syn keyword znoteKeyword TODO ISSUE REPRODUCE SOLUTION DONE TARGETDONE IDEA
syn keyword znoteSuperHighlight TARGET
syn keyword znoteSuperHappy ACHIEVEMENT

hi def link znoteKeyword Keyword

syn region znoteReport start=/===== REPORT START =====/ end=/===== REPORT END =====/
hi def link znoteReport Comment

" Title
syn match znoteTitle  "\*\ .\+\ \*"
hi def link znoteTitle Title

syn match znoteDate "\d\d\d\d-\d\d-\d\d"
syn match znoteShortTime "\d\d\:\d\d"
hi def link znoteDate Title
hi def link znoteShortTime Title

" Email
syn match znoteEmail "[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+"
hi def link znoteEmail    Identifier

" syn region znoteCode start=/^<code> / end=/<\/code>/
"hi def link znoteCode Comment
" TODO add the code markup here

let b:current_syntax = "go"

" FOLDING
" http://vim.wikia.com/wiki/Folding

" Auto remember view when enter and leave
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" Folding format
hi clear Folded
hi clear FoldColumn
hi def link Folded SpecialKey 
hi def link FoldColumn SpecialKey

hi SuperHighlight term=standout ctermfg=9 ctermbg=11 guifg=Yellow guibg=Red
hi def link znoteSuperHighlight SuperHighlight

hi SuperHappy term=standout ctermfg=2 ctermbg=0 guifg=Green guibg=Black
hi def link znoteSuperHappy SuperHappy

set foldcolumn=0
setlocal foldmethod=expr
setlocal foldexpr=(getline(v:lnum)=~'^$')?-1:((indent(v:lnum)<indent(v:lnum+1))?('>'.indent(v:lnum+1)):indent(v:lnum))
set fillchars=fold:\ "(there's a space after that \)

set foldtext=MyFoldText()
function MyFoldText()
  let nucolwidth = &fdc + &number*&numberwidth
  let winwd = winwidth(0) - nucolwidth 
  let foldlinecount = foldclosedend(v:foldstart) - foldclosed(v:foldstart) + 1
  let prefix = "folded("
  let postfix = ")"
  let fdnfo = prefix . string(v:foldlevel) . "," . string(foldlinecount) . postfix
  let line =  strpart(getline(v:foldstart), 0 , winwd - len(fdnfo))
  let fillcharcount = winwd - len(line) - len(fdnfo)
  return line . repeat(" ",fillcharcount) . fdnfo
endfunction

" Content shortcuts"
" insert current time
nnoremap <F5> "=strftime("%F")<CR>P
inoremap <F5> <C-O>"=strftime("%F")<CR>P
nnoremap <F6> "=strftime("%R")<CR>P
inoremap <F6> <C-O>"=strftime("%R")<CR>P
nnoremap <F4> "=strftime("%F %T")<CR>P
inoremap <F4> <C-O>"=strftime("%F %T")<CR>P


" F9 for toggle folding current level
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" F7 fold more
inoremap <F7> <C-O>zm
nnoremap <F7> zm

" F6 fold less
inoremap <F8> <C-O>zr
nnoremap <F8> zr


