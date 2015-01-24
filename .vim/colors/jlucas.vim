" vim: ts=4 sw=4 expandtab:
" description:  color scheme based on
"       julievonderropp's corporation (available on kuler.adobe.com)
"      author:  kamil.stachowski@gmail.com
"     license:  gpl 3+
"     version:  0.1 (2008.11.08)

" changelog:
"       0.1:    2008.11.08
"           initial version


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "jlucas"

"black      192224
"blue       536991
"grey dark  5E6C70
"grey light A1A6A8
"white      F9F9FF
"yellow     BD9800

" https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
"orange 202 (alts 136 214 208 166)

" Colors
" 256-to-html 234 243 66 235 250 30 121 236 88 172 180 15 249 172 250 241 23 | sort -n
" 15     #ffffff
" 23     #005f5f
" 30     #008787
" 66     #5f8787
" 88     #870000
" 121    #87ffaf
" 172    #d78700
" 180    #d7af87
" 234    #1c1c1c
" 235    #262626
" 236    #303030
" 241    #606060
" 243    #767676
" 249    #b2b2b2
" 250    #bcbcbc

fun! <SID>NOOP()
    return 'ctermbg=241'
endfun

"hi Comment cterm=italic    ctermfg=242 
hi  Normal        ctermbg=234  ctermfg=249               guibg=#1c1c1c   guifg=#b2b2b2
hi  Comment                     ctermfg=243                              guifg=#767676
hi  Constant                   ctermfg=66                                guifg=#5f8787
hi  Cursor                     ctermfg=234                               guifg=#1c1c1c
hi  CursorColumn  ctermbg=235                            guibg=#262626
hi  CursorIM      ctermbg=250  ctermfg=234               guibg=#bcbcbc   guifg=#1c1c1c
hi  Delimiter                  ctermfg=30                                guifg=#008787
hi  MatchParen    ctermbg=234  ctermfg=121   cterm=bold                  guifg=#87ffaf
hi  DiffAdd       ctermbg=235  ctermfg=179               guibg=#303030   guifg=#d7af5f
hi  DiffChange    ctermbg=235                            guibg=#303030
hi  DiffDelete    ctermbg=235    ctermfg=172             guibg=#303030   guifg=#d78700
hi  DiffText      ctermbg=235                            guibg=#303030
hi  Error         ctermbg=88   ctermfg=66                guibg=#870000   guifg=#5f8787
hi  FoldColumn    ctermbg=66   ctermfg=234  cterm=italic guibg=#5f8787   guifg=#1c1c1c gui=italic
hi  Identifier                 ctermfg=172                               guifg=#d78700
hi  LineNr                     ctermfg=180                               guifg=#d7af87
hi  ModeMsg                    ctermfg=15   cterm=bold                   guifg=#ffffff gui=bold
hi  PreProc                    ctermfg=202                               guifg=#d78700
hi  Search        ctermbg=172  ctermfg=234               guibg=#d78700   guifg=#1c1c1c
hi  SignColumn    ctermbg=250  ctermfg=234               guibg=#bcbcbc   guifg=#1c1c1c
hi  Statement                  ctermfg=172                               guifg=#d78700
hi  StatusLine    ctermbg=172  ctermfg=234  cterm=bold   guibg=#d78700   guifg=#1c1c1c gui=bold
hi  StatusLineNC  ctermbg=241  ctermfg=234  cterm=bold   guibg=#606060   guifg=#1c1c1c gui=bold
hi  Title                      ctermfg=15   cterm=bold                   guifg=#ffffff gui=bold
hi  Todo          ctermbg=172  ctermfg=15                   guibg=#d78700   guifg=#ffffff
hi  Type                       ctermfg=121                              guifg=#87ffaf
hi  Underlined                 ctermfg=15   cterm=underline                guifg=#ffffff  gui=underline
hi  Visual        ctermbg=23   ctermfg=121              guibg=#005f5f   guifg=#87ffaf
hi  VisualNOS     ctermbg=23   ctermfg=234              guibg=#005f5f   guifg=#1c1c1c
hi  WildMenu      ctermbg=66                            guibg=#5f8787
hi  Function                   ctermfg=179
hi  VarId                      ctermfg=179

" Lisp
hi! link lispFunc Keyword

" Python
hi! link pythonBuiltin Statement
hi! link pythonRepeat Statement
hi! link pythonFunction Function

hi! link Boolean    Constant
hi! link Character  Constant
hi! link Conditional    Statement
hi! link CursorLine CursorColumn
hi! link Debug      Special
hi! link Define     PreProc
hi! link Directory  Type
hi! link ErrorMsg   Error
hi! link Exception  Statement
hi! link Float      Constant
hi! link Folded     FoldColumn
hi! link IncSearch  Search
hi! link Include    PreProc
hi! link Keyword    Statement
hi! link Label      Statement
hi! link Macro      PreProc
hi! link MoreMsg    Statement
hi! link NonText    Comment
hi! link Number     Constant
hi! link Operator   Statement
hi! link PreCondit  PreProc
hi! link Repeat     Statement
hi! link Special    PreProc
hi! link SpecialChar    Special
hi! link SpecialComment Special
hi! link SpecialKey Comment
hi! link SpellBad   Underlined
hi! link SpellCap   Underlined
hi! link SpellLocal Underlined
hi! link SpellRare  Underlined
hi! link StorageClass   Type
hi! link String     Constant
hi! link Structure  Type
hi! link TabLine    StatusLineNC
hi! link TabLineFill    StatusLineNC
hi! link TabLineSel StatusLine
hi! link Tag        Special
hi! link Typedef    Type
hi! link VertSplit  StatusLineNC
hi! link WarningMsg Error
