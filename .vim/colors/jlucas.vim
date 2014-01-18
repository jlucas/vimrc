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

let g:colors_name = "corporation"

"black      192224
"blue       536991
"grey dark  5E6C70
"grey light A1A6A8
"white      F9F9FF
"yellow     BD9800

" https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
"orange 202 (alts 136 214 208 166)

"hi Comment cterm=italic    ctermfg=242 
hi Comment       cterm=bold       ctermfg=238  ctermbg=234
hi Constant                       ctermfg=36
hi Cursor                         ctermfg=234  ctermbg=15
hi CursorColumn                                ctermbg=235
hi CursorIM                       ctermfg=234  ctermbg=250
hi DiffAdd                                     ctermbg=235
hi DiffChange                                  ctermbg=236
hi DiffDelete                                  ctermbg=234
hi DiffText                                    ctermbg=236
hi Error                          ctermfg=36  ctermbg=88
hi FoldColumn    cterm=italic     ctermfg=234  ctermbg=36
hi Identifier                     ctermfg=202
hi ModeMsg       cterm=bold       ctermfg=15   ctermbg=234
hi Normal                         ctermfg=245  ctermbg=234
hi PreProc                        ctermfg=202
hi Search                         ctermfg=234  ctermbg=202
hi SignColumn                     ctermfg=234  ctermbg=250
hi Statement     cterm=bold       ctermfg=202
hi StatusLine    cterm=bold       ctermfg=234  ctermbg=202
hi StatusLineNC  cterm=bold       ctermfg=234  ctermbg=242
hi Title         cterm=bold       ctermfg=15   ctermbg=234
hi Todo                           ctermfg=15       ctermbg=202
hi Type          cterm=bold       ctermfg=250
hi Underlined    cterm=underline  ctermfg=15   ctermbg=234
hi Visual                         ctermfg=234      ctermbg=15
hi VisualNOS     cterm=underline  ctermfg=234  ctermbg=15
hi WildMenu                                    ctermbg=36

hi! link Boolean    Constant
hi! link Character  Constant
hi! link Conditional    Statement
hi! link CursorLine CursorColumn
hi! link Debug      Special
hi! link Define     PreProc
hi! link Delimiter  Special
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
hi! link LineNr     Identifier
hi! link Macro      PreProc
hi! link MatchParen Statement
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
