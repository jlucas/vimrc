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
"
" light gray: 
" Blue-green: 30
" Pale blue-green: 66
" Orange: 172 (formerly 166)

"hi Comment cterm=italic    ctermfg=242 
hi  Comment       ctermbg=234  ctermfg=243
hi  Constant      ctermfg=66
hi  Cursor        ctermbg=234  ctermfg=234
hi  CursorColumn  ctermbg=235
hi  CursorIM      ctermbg=250  ctermfg=234
hi  Delimiter     ctermfg=30
hi  MatchParen    ctermbg=235  ctermfg=36   cterm=bold
hi  DiffAdd       ctermbg=235
hi  DiffChange    ctermbg=236
hi  DiffDelete    ctermbg=234
hi  DiffText      ctermbg=236
hi  Error         ctermbg=88   ctermfg=66
hi  FoldColumn    ctermbg=66   ctermfg=234  cterm=italic
hi  Identifier    ctermfg=172
hi  LineNr        ctermbg=234  ctermfg=180
hi  ModeMsg       ctermbg=234  ctermfg=15   cterm=bold
hi  Normal        ctermbg=234  ctermfg=249
hi  PreProc       ctermfg=172
hi  Search        ctermbg=172  ctermfg=234
hi  SignColumn    ctermbg=250  ctermfg=234
hi  Statement     ctermfg=172
hi  StatusLine    ctermbg=172  ctermfg=234  cterm=bold
hi  StatusLineNC  ctermbg=241  ctermfg=234  cterm=bold
hi  Title         ctermbg=234  ctermfg=15   cterm=bold
hi  Todo          ctermbg=172  ctermfg=15
hi  Type          ctermfg=121
hi  Underlined    ctermbg=234  ctermfg=15   cterm=underline
hi  Visual        ctermbg=15   ctermfg=234
hi  VisualNOS     ctermbg=15   ctermfg=234  cterm=underline
hi  WildMenu      ctermbg=66

hi! link Boolean    Constant
hi! link Character  Constant
hi! link Conditional    Statement
hi! link CursorLine CursorColumn
hi! link Debug      Special
hi! link Define     PreProc
"hi! link Delimiter  Special
hi! link Directory  Type
hi! link ErrorMsg   Error
hi! link Exception  Statement
hi! link Float      Constant
hi! link Folded     FoldColumn
hi! link Function   Type
hi! link IncSearch  Search
hi! link Include    PreProc
hi! link Keyword    Statement
hi! link Label      Statement
"hi! link LineNr     Identifier
hi! link Macro      PreProc
"hi! link MatchParen Statement
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
hi! link lispFunc Keyword
