" vim: expandtab

filetype plugin indent on
au BufNewFile,BufRead *.js,*.jsx,*.javascript,*.es  set filetype=javascript
au BufNewFile,BufRead *.sco,*.orc,*.csd set filetype=csound
au BufNewFile,BufRead *.mm set filetype=objc
au BufRead,BufNewFile *.rc set filetype=rc
au BufNewFile,BufRead *.md,*.markdown,*.mdwn set filetype=markdown
au BufRead,BufNewFile *.arc set filetype=arc
au BufRead,BufNewFile *.el let g:slimv_disable_lisp = 1
au Syntax git normal zR

