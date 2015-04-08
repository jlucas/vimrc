let g:colors_name = 'jlucas-allblues'

set background=dark
hi clear
if exists('syntax_on')
	syntax reset
endif

let s:none = 'none'
let s:bold = 'bold'
let s:standout = 'standout'
let s:white = '248'
let s:white1 = '245'
let s:black = '16'
let s:gray = '245'
let s:gray1 = '234'
let s:gray2 = '235'
let s:gray3 = '236'
let s:gray4 = '238'
let s:gray5 = '240'
let s:green = '108'
let s:dirtygreen = '100'
let s:yellowgreen = '106'
let s:greenblue = '23'
let s:lightgreenblue = '121'
let s:lightbrown = '136'
let s:lightcyan = '109'
let s:cyan = '37'
let s:darkcyan = '30'
let s:skyblue = '31'
let s:lightskyblue = '43'
let s:lightblue = '32'
let s:darkblue = '18'
let s:bluegreen = '36'
let s:red = '160'
let s:darkred = '88'
let s:yellow = '144'
let s:purple = '103'
let s:darkpurple = '92'

exe "hi! Normal cterm=".s:none." ctermfg=".s:white." ctermbg=".s:gray1
exe "hi! Cursor cterm=".s:none." ctermfg=".s:black." ctermbg=".s:green
exe "hi! CursorColumn cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray4
exe "hi! CursorLine cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray2
exe "hi! DiffAdd cterm=".s:none." ctermfg=".s:lightbrown." ctermbg=".s:gray2
exe "hi! DiffChange cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:gray2
exe "hi! DiffDelete cterm=".s:none." ctermfg=".s:dirtygreen." ctermbg=".s:gray2
exe "hi! DiffText cterm=".s:none." ctermfg=".s:yellowgreen." ctermbg=".s:gray2
exe "hi! Directory cterm=".s:none." ctermfg=".s:lightblue." ctermbg=".s:none
exe "hi! ErrorMsg cterm=".s:none." ctermfg=".s:white." ctermbg=".s:darkred
exe "hi! FoldColumn cterm=".s:none." ctermfg=".s:gray4." ctermbg=".s:none
exe "hi! Folded cterm=".s:none." ctermfg=".s:white1." ctermbg=".s:gray2
exe "hi! IncSearch cterm=".s:none." ctermfg=".s:white." ctermbg=".s:darkblue
exe "hi! LineNr cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none
exe "hi! MatchParen cterm=".s:bold." ctermfg=".s:lightgreenblue." ctermbg=".s:none
exe "hi! ModeMsg cterm=".s:bold." ctermfg=".s:none." ctermbg=".s:none
exe "hi! MoreMsg cterm=".s:none." ctermfg=".s:green." ctermbg=".s:none
exe "hi! NonText cterm=".s:none." ctermfg=".s:lightbrown." ctermbg=".s:none
exe "hi! Pmenu cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray3
exe "hi! PmenuSel cterm=".s:none." ctermfg=".s:lightgreenblue." ctermbg=".s:greenblue
exe "hi! PmenuSbar cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray2
exe "hi! PmenuThumb cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray4
exe "hi! Question cterm=".s:none." ctermfg=".s:green." ctermbg=".s:none
exe "hi! Search cterm=".s:none." ctermfg=".s:black." ctermbg=".s:darkcyan
exe "hi! SignColumn cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:gray1
exe "hi! SpecialKey cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none
exe "hi! StatusLineNC cterm=".s:none." ctermfg=".s:gray." ctermbg=".s:gray3
exe "hi! StatusLine cterm=".s:none." ctermfg=".s:white." ctermbg=".s:gray5
exe "hi! TabLine cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray3
exe "hi! TabLineFill cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray3
exe "hi! TabLineSel cterm=".s:bold." ctermfg=".s:none." ctermbg=".s:none
exe "hi! Title cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none
exe "hi! VertSplit cterm=".s:none." ctermfg=".s:gray3." ctermbg=".s:gray3
exe "hi! Visual cterm=".s:none." ctermfg=".s:lightgreenblue." ctermbg=".s:greenblue
exe "hi! VisualNOS cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray2
exe "hi! WarningMsg cterm=".s:none." ctermfg=".s:red." ctermbg=".s:none
exe "hi! WildMenu cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none
exe "hi! Comment cterm=".s:none." ctermfg=".s:purple." ctermbg=".s:none
exe "hi! Constant cterm=".s:none." ctermfg=".s:lightcyan." ctermbg=".s:none
exe "hi! Error cterm=".s:none." ctermfg=".s:red." ctermbg=".s:none
exe "hi! Identifier cterm=".s:none." ctermfg=".s:cyan." ctermbg=".s:none
exe "hi! Ignore cterm=".s:none." ctermfg=".s:gray3." ctermbg=".s:none
exe "hi! PreProc cterm=".s:none." ctermfg=".s:darkpurple." ctermbg=".s:none
exe "hi! Special cterm=".s:none." ctermfg=".s:bluegreen." ctermbg=".s:none
exe "hi! Statement cterm=".s:none." ctermfg=".s:skyblue." ctermbg=".s:none
exe "hi! Todo cterm=".s:none." ctermfg=".s:lightbrown." ctermbg=".s:none
exe "hi! Type cterm=".s:none." ctermfg=".s:green." ctermbg=".s:none
exe "hi! Underlined cterm=".s:none." ctermfg=".s:darkpurple." ctermbg=".s:none

