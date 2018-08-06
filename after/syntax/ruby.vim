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
syntax match rubyNiceOperator "\<not\>" conceal cchar=¬
syntax match rubyNiceOperator ">>" conceal cchar=»
syntax match rubyNiceOperator "\<in\>" conceal cchar=∈
syntax match rubyNiceOperator "\<not in\>" conceal cchar=∉
syntax match rubyNiceOperator "||" conceal cchar=∨
syntax match rubyNiceOperator "&&" conceal cchar=∧
syntax match rubyNiceOperator " / " conceal cchar=÷
syntax match rubyNiceOperator "`div`" conceal cchar=÷
syntax match rubyNiceOperator "=\~" conceal cchar=≅
syntax match rubyNiceOperator "!\~" conceal cchar=≆
" Only replace the dot, avoid taking spaces around.
syntax match rubyNiceOperator /\s\.\s/ms=s+1,me=e-1 conceal cchar=∘

" Superscripts
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)0\ze\_W" conceal cchar=⁰
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)1\ze\_W" conceal cchar=¹
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)2\ze\_W" conceal cchar=²
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)3\ze\_W" conceal cchar=³
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)4\ze\_W" conceal cchar=⁴
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)5\ze\_W" conceal cchar=⁵
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)6\ze\_W" conceal cchar=⁶
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)7\ze\_W" conceal cchar=⁷
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)8\ze\_W" conceal cchar=⁸
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)9\ze\_W" conceal cchar=⁹
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)a\ze\_W" conceal cchar=ᵃ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)b\ze\_W" conceal cchar=ᵇ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)c\ze\_W" conceal cchar=ᶜ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)d\ze\_W" conceal cchar=ᵈ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)e\ze\_W" conceal cchar=ᵉ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)f\ze\_W" conceal cchar=ᶠ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)g\ze\_W" conceal cchar=ᵍ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)h\ze\_W" conceal cchar=ʰ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)i\ze\_W" conceal cchar=ⁱ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)j\ze\_W" conceal cchar=ʲ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)k\ze\_W" conceal cchar=ᵏ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)l\ze\_W" conceal cchar=ˡ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)m\ze\_W" conceal cchar=ᵐ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)n\ze\_W" conceal cchar=ⁿ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)o\ze\_W" conceal cchar=ᵒ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)p\ze\_W" conceal cchar=ᵖ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)r\ze\_W" conceal cchar=ʳ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)s\ze\_W" conceal cchar=ˢ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)t\ze\_W" conceal cchar=ᵗ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)u\ze\_W" conceal cchar=ᵘ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)v\ze\_W" conceal cchar=ᵛ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)w\ze\_W" conceal cchar=ʷ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)x\ze\_W" conceal cchar=ˣ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)y\ze\_W" conceal cchar=ʸ
syntax match rubyNiceOperator "\(\*\*\|\^\|\^\^\)z\ze\_W" conceal cchar=ᶻ

" Fractions
syntax keyword rubyNiceBuiltin 0.25 conceal cchar=¼
syntax keyword rubyNiceBuiltin 0.5 conceal cchar=½
syntax keyword rubyNiceBuiltin 0.75 conceal cchar=¾

" Single character variable names usually indicate something generic and
" should be emphasized. eg 𝒇(𝒊)
syntax keyword rubyNiceStatement a conceal cchar=𝒂
syntax keyword rubyNiceStatement b conceal cchar=𝒃
syntax keyword rubyNiceStatement c conceal cchar=𝒄
syntax keyword rubyNiceStatement d conceal cchar=𝒅
syntax keyword rubyNiceStatement e conceal cchar=𝒆
syntax keyword rubyNiceStatement f conceal cchar=𝒇
syntax keyword rubyNiceStatement g conceal cchar=𝒈
syntax keyword rubyNiceStatement h conceal cchar=𝒉
syntax keyword rubyNiceStatement i conceal cchar=𝒊
syntax keyword rubyNiceStatement j conceal cchar=𝒋
syntax keyword rubyNiceStatement k conceal cchar=𝒌
syntax keyword rubyNiceStatement l conceal cchar=𝒍
syntax keyword rubyNiceStatement m conceal cchar=𝒎
syntax keyword rubyNiceStatement n conceal cchar=𝒏
syntax keyword rubyNiceStatement o conceal cchar=𝒐
syntax keyword rubyNiceStatement p conceal cchar=𝒑
syntax keyword rubyNiceStatement q conceal cchar=𝒒
syntax keyword rubyNiceStatement r conceal cchar=𝒓
syntax keyword rubyNiceStatement s conceal cchar=𝒔
syntax keyword rubyNiceStatement t conceal cchar=𝒕
syntax keyword rubyNiceStatement u conceal cchar=𝒖
syntax keyword rubyNiceStatement v conceal cchar=𝒗
syntax keyword rubyNiceStatement w conceal cchar=𝒘
syntax keyword rubyNiceStatement x conceal cchar=𝒙
syntax keyword rubyNiceStatement y conceal cchar=𝒚
syntax keyword rubyNiceStatement z conceal cchar=𝒛
syntax keyword rubyNiceStatement A conceal cchar=𝐴
syntax keyword rubyNiceStatement B conceal cchar=𝐵
syntax keyword rubyNiceStatement C conceal cchar=𝐶
syntax keyword rubyNiceStatement D conceal cchar=𝐷
syntax keyword rubyNiceStatement E conceal cchar=𝐸
syntax keyword rubyNiceStatement F conceal cchar=𝐹
syntax keyword rubyNiceStatement G conceal cchar=𝐺
syntax keyword rubyNiceStatement H conceal cchar=𝐻
syntax keyword rubyNiceStatement I conceal cchar=𝐼
syntax keyword rubyNiceStatement J conceal cchar=𝐽
syntax keyword rubyNiceStatement K conceal cchar=𝐾
syntax keyword rubyNiceStatement L conceal cchar=𝐿
syntax keyword rubyNiceStatement M conceal cchar=𝑀
syntax keyword rubyNiceStatement N conceal cchar=𝑁
syntax keyword rubyNiceStatement O conceal cchar=𝑂
syntax keyword rubyNiceStatement P conceal cchar=𝑃
syntax keyword rubyNiceStatement Q conceal cchar=𝑄
syntax keyword rubyNiceStatement R conceal cchar=𝑅
syntax keyword rubyNiceStatement S conceal cchar=𝑆
syntax keyword rubyNiceStatement T conceal cchar=𝑇
syntax keyword rubyNiceStatement U conceal cchar=𝑈
syntax keyword rubyNiceStatement V conceal cchar=𝑉
syntax keyword rubyNiceStatement W conceal cchar=𝑊
syntax keyword rubyNiceStatement X conceal cchar=𝑋
syntax keyword rubyNiceStatement Y conceal cchar=𝑌
syntax keyword rubyNiceStatement Z conceal cchar=𝑍

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
  syntax match rubyNiceOperator "==" conceal cchar=≟
  syntax match rubyNiceOperator "!=" conceal cchar=≠
  syntax match rubyNiceOperator ">>" conceal cchar=»
  syntax match rubyNiceOperator "<<" conceal cchar=«
  syntax match rubyNiceOperator "\:\:" conceal cchar=∷
  syntax match rubyNiceOperator "!!" conceal cchar=‼
  syntax match rubyNiceOperator "<=" conceal cchar=≤
  syntax match rubyNiceOperator ">=" conceal cchar=≥
  syntax match rubyNiceOperator "=>" conceal cchar=⇒
  syntax match rubyNiceOperator "\.\." conceal cchar=‥
  syntax match rubyNiceOperator "*" conceal cchar=×
endif

highlight link rubyNiceOperator Operator
highlight link rubyNiceStatement Statement
highlight link rubyNiceKeyword Keyword
highlight! link Conceal Operator
highlight! link Conceal Statement
highlight! link Conceal Keyword

setlocal conceallevel=2
