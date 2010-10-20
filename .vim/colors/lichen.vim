" Vim color file
" Maintainer: Rafal Sulejman <rms@poczta.onet.pl>
" Last Change:  2002.06.18
"
" This color scheme uses a black (dark) background.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "jlucas"
hi Normal       guibg=#3c464f guifg=#C0C0C0 gui=NONE

"#3C464F",
"#47585F",
"#9AB951",
"#CBDF62",
"#D9F5A0"

" Main colors
hi Constant     guibg=#3c464f guifg=#d9f5a0 gui=NONE
hi Identifier   guibg=#3c464f guifg=#d9f5a0 gui=NONE
hi Special      guibg=#3c464f guifg=#d9f5a0 gui=NONE
hi Statement    guibg=#3c464f guifg=#cbdf62 gui=NONE
hi Preproc      guibg=#3c464f guifg=#cbdf62 gui=NONE
hi Type         guibg=#3c464f guifg=#9ab951 gui=NONE

" Secondary colors
hi Comment      guibg=#3c464f guifg=#47585f gui=NONE
hi Visual       guibg=#005900 guifg=#40C940 gui=NONE
hi VisualNOS    guibg=#005900 guifg=#40C940 gui=NONE
hi Search       guibg=#707000 guifg=#FFFF00 gui=NONE
hi IncSearch    guibg=#D05000 guifg=#FFE000 gui=NONE

" Special colors
hi WarningMsg   guibg=#707000 guifg=#FFFF00 gui=NONE
hi MoreMsg      guibg=#000070 guifg=#00B8E0 gui=NONE
hi ErrorMsg     guibg=#CC0000 guifg=#FFEE00 gui=NONE
hi ModeMsg      guibg=#3c464f guifg=#E8E8E8 gui=NONE
hi WildMenu     guibg=#5f5f5f guifg=#FFEE60 gui=NONE
hi StatusLine   guibg=#1f1f1f guifg=#F0F0F0 gui=NONE
hi StatusLineNC guibg=#0f0f0f guifg=#eaea3a gui=NONE
hi VertSplit    guibg=#1f1f1f guifg=#F0F0F0 gui=NONE
hi Error        guibg=#EE0000 guifg=#FFDD60 gui=NONE
hi Todo         guibg=#EEE000 guifg=#000000 gui=NONE
hi Title        guibg=#3c464f guifg=#ffffff gui=NONE
hi Question     guibg=#005900 guifg=#40E840 gui=NONE
hi LineNr       guibg=#3c464f guifg=#F0B0E0 gui=NONE
hi Directory    guibg=#3c464f guifg=#D0D0D0 gui=NONE
hi NonText      guibg=#3c464f guifg=#FFDDAA gui=NONE
hi SpecialKey   guibg=#3c464f guifg=#FFFFFF gui=NONE

" Diff colors
hi DiffAdd      guibg=#505050 guifg=#D0D0D0 gui=NONE
hi DiffChange   guibg=#505050 guifg=#D0D0D0 gui=NONE
hi DiffDelete   guibg=#505050 guifg=#D0D0D0 gui=NONE
hi DiffText     guibg=#707070 guifg=#F0F0F0 gui=NONE

" Folding colors
hi Folded       guibg=#703070 guifg=#DDB8DD gui=NONE
hi FoldColumn   guibg=#C4153B guifg=#F0F0F0 gui=NONE

" Cursor colors
hi Cursor       guibg=#FFFFFF guifg=#000000 gui=NONE
hi icursor      guibg=#FFEE00 guifg=#000000 gui=NONE
hi ncursor      guibg=#FFFFFF guifg=#000000 gui=NONE
hi rcursor      guibg=#00CCFF guifg=#000000 gui=NONE
hi lcursor      guibg=#40D040 guifg=#000000 gui=NONE

