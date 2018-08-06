scriptencoding utf-8

"=============================================================================
" What Is This: Add some conceal operator for your Ruby files
" File:         ruby.vim (conceal enhancement)
" Author:       Huy Duong <qhuyduong@hotmail.com>
" Require:
"   set nocompatible
"     somewhere on your .vimrc
"
"   Vim 7.3 or Vim compiled with conceal patch.
"   Use --with-features=big or huge in order to compile it in.
"
" Usage:
"   Drop this file in your
"       ~/.vim/after/syntax folder (Linux/MacOSX/BSD...)
"       ~/vimfiles/after/syntax folder (Windows)
"
"   For this script to work, you have to set the encoding to utf-8
"   :set encoding=utf-8
"
" Additional:
"     * if you want to avoid the loading, add the following line in your .vimrc:
"        let g:no_ruby_conceal = 1
"
if exists('g:no_ruby_conceal') || !has('conceal') || &encoding !=# 'utf-8'
  finish
endif

" vim: set fenc=utf-8:
syntax keyword rubyNiceOperator lambda conceal cchar=λ
syntax match rubyNiceOperator "\<sum\>" conceal cchar=∑
syntax match rubyNiceOperator "\<product\>" conceal cchar=∏
syntax match rubyNiceOperator "\<sqrt\>" conceal cchar=√
syntax match rubyNiceOperator "\C\<Pi\>" conceal cchar=π
syntax match rubyNiceOperator ">>" conceal cchar=»
syntax match rubyNiceOperator "\<in\>" conceal cchar=∈
syntax match rubyNiceOperator "\<not in\>" conceal cchar=∉
syntax match rubyNiceOperator "||\ze[[:alpha:][:space:]_([]" conceal cchar=∨
syntax match rubyNiceOperator "&&\ze[[:alpha:][:space:]_([]" conceal cchar=∧
syntax match rubyNiceOperator "`div`" conceal cchar=÷
" Only replace the dot, avoid taking spaces around.
syntax match rubyNiceOperator /\s\.\s/ms=s+1,me=e-1 conceal cchar=∘

" Enable some advanced operators concealing, which may not be supported in
" Ligature Fonts
let s:extraConceal = 1
" Some windows font don't support some of the characters,
" so if they are the main font, we don't load them :)
if has('win32')
  let s:incompleteFont =
        \ [
        \   'Consolas' ,
        \   'Lucida Console',
        \   'Courier New'
        \ ]
  let s:mainfont = substitute( &guifont, '^\([^:,]\+\).*', '\1', '')
  for s:fontName in s:incompleteFont
    if s:mainfont ==? s:fontName
      let s:extraConceal = 0
      break
    endif
  endfor
endif

if s:extraConceal
  syntax match rubyNiceOperator "<-" conceal cchar=←
  syntax match rubyNiceOperator "->" conceal cchar=→
  syntax match rubyNiceOperator "==" conceal cchar=≡
  syntax match rubyNiceOperator "!=" conceal cchar=≢
  syntax match rubyNiceOperator ">>" conceal cchar=»
  syntax match rubyNiceOperator "\:\:" conceal cchar=∷
  syntax match rubyNiceOperator "!!" conceal cchar=‼
  syntax match rubyNiceOperator "<=" conceal cchar=≤
  syntax match rubyNiceOperator ">=" conceal cchar=≥
endif

hi link rubyNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2
