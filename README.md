This syntax file displays unicode characters for some Ruby operators and
built-in functions.

*This does not – at any point – alter your source code*. It simply uses Vim's
"conceal" feature to “hide” `in` behind `∈`, etc. Whenever the cursor is at
a line with concealed text, the text will be expanded.

To install, simply put `ruby.vim` in `~/.vim/after/syntax` or use a plug-in
manager such as [vim-plug](https://github.com/junegunn/vim-plug) or
[pathogen.vim](https://github.com/tpope/vim-pathogen).

Vim ≥ 7.3 is required.

This plug-in is very much inspired by
<http://github.com/Twinside/vim-haskellConceal>
