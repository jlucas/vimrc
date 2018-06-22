" Isthmus
" Terminal colorscheme for vim

set background=dark
highlight clear
if exists('syntax_on')
	syntax reset
endif
let g:colors_name = 'isthmus'

let s:none = 'none'
let s:bold = 'bold'
let s:standout = 'standout'
let s:white = '248'
let s:white1 = '245'
let s:white2 = '251'
let s:white3 = '253'
let s:black = '16'
let s:gray = '245'
let s:gray0 = '232'
let s:gray1 = '234'
let s:gray2 = '235'
let s:gray3 = '236'
let s:gray4 = '238'
let s:gray5 = '240'
let s:gray6 = '242'
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
let s:orange = '208' " not used

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" isthmus colors
let s:statement = '157'
let s:type = '157'
let s:constant = s:white3
let s:identifier = s:white3
let s:preproc = s:white3
let s:comment = s:gray6
let s:special = s:white3
let s:signcolumn = s:white3

exe "hi! Normal cterm=".s:none." ctermfg=".s:white3." ctermbg=".s:none
exe "hi! Cursor cterm=".s:none." ctermfg=".s:green." ctermbg=".s:green
exe "hi! Statement cterm=".s:none." ctermfg=".s:statement." ctermbg=".s:none
exe "hi! Type cterm=".s:none." ctermfg=".s:type." ctermbg=".s:none
exe "hi! Identifier cterm=".s:none." ctermfg=".s:identifier." ctermbg=".s:none
exe "hi! Constant cterm=".s:none." ctermfg=".s:constant." ctermbg=".s:none
exe "hi! Comment cterm=".s:bold." ctermfg=".s:comment." ctermbg=".s:none
exe "hi! PreProc cterm=".s:none." ctermfg=".s:preproc." ctermbg=".s:none
exe "hi! SignColumn cterm=".s:none." ctermfg=".s:signcolumn." ctermbg=".s:none
" The following are used by the Signify plugin (:h signify)
exe "hi! DiffChange cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none  
exe "hi! DiffAdd cterm=".s:none." ctermfg=".s:lightbrown." ctermbg=".s:none
exe "hi! DiffDelete cterm=".s:none." ctermfg=".s:dirtygreen." ctermbg=".s:none

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jlucas-allblues
exe "hi! CursorColumn cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray0
exe "hi! CursorLine cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray0
exe "hi! DiffText cterm=".s:none." ctermfg=".s:yellowgreen." ctermbg=".s:gray2
exe "hi! Directory cterm=".s:none." ctermfg=".s:lightblue." ctermbg=".s:none
exe "hi! ErrorMsg cterm=".s:none." ctermfg=".s:white." ctermbg=".s:darkred
exe "hi! FoldColumn cterm=".s:none." ctermfg=".s:gray4." ctermbg=".s:none
"exe "hi! Folded cterm=".s:none." ctermfg=".s:purple." ctermbg=".s:gray2
"exe "hi! Folded cterm=".s:none." ctermfg=".s:white2" ctermbg=65"
"exe "hi! Folded cterm=".s:bold" ctermfg=".s:bluegreen" ctermbg=".s:none
exe "hi! Folded cterm=".s:none." ctermfg=".s:purple." ctermbg=".s:gray3
exe "hi! IncSearch cterm=".s:none." ctermfg=".s:white." ctermbg=".s:darkblue
exe "hi! LineNr cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none
exe "hi! MatchParen cterm=".s:bold." ctermfg=".s:lightgreenblue." ctermbg=".s:none
exe "hi! ModeMsg cterm=".s:bold." ctermfg=".s:none." ctermbg=".s:none
exe "hi! MoreMsg cterm=".s:none." ctermfg=".s:green." ctermbg=".s:none
exe "hi! NonText cterm=".s:none." ctermfg=".s:lightbrown." ctermbg=".s:none
"exe "hi! NonText cterm=".s:none." ctermfg=".s:orange." ctermbg=".s:none
exe "hi! Pmenu cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray3
exe "hi! PmenuSel cterm=".s:none." ctermfg=".s:lightgreenblue." ctermbg=".s:greenblue
exe "hi! PmenuSbar cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray2
exe "hi! PmenuThumb cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray4
exe "hi! Question cterm=".s:none." ctermfg=".s:green." ctermbg=".s:none
exe "hi! Search cterm=".s:none." ctermfg=".s:black." ctermbg=".s:darkcyan
exe "hi! SpecialKey cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none
exe "hi! StatusLineNC cterm=".s:none." ctermfg=".s:gray." ctermbg=".s:gray4
exe "hi! StatusLine cterm=".s:bold." ctermfg=".s:white2." ctermbg=".s:gray5
exe "hi! TabLine cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray3
exe "hi! TabLineFill cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray4
exe "hi! TabLineSel cterm=".s:bold." ctermfg=".s:white2." ctermbg=".s:gray5
exe "hi! Title cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none
exe "hi! VertSplit cterm=".s:none." ctermfg=".s:gray3." ctermbg=".s:gray4
exe "hi! Visual cterm=".s:none." ctermfg=".s:lightgreenblue." ctermbg=".s:greenblue
exe "hi! VisualNOS cterm=".s:none." ctermfg=".s:none." ctermbg=".s:gray2
exe "hi! WarningMsg cterm=".s:none." ctermfg=".s:red." ctermbg=".s:none
exe "hi! WildMenu cterm=".s:none." ctermfg=".s:yellow." ctermbg=".s:none
exe "hi! Error cterm=".s:none." ctermfg=".s:red." ctermbg=".s:none
exe "hi! Ignore cterm=".s:none." ctermfg=".s:gray3." ctermbg=".s:none
exe "hi! Special cterm=".s:none." ctermfg=".s:special." ctermbg=".s:none
"exe "hi! Todo cterm=".s:none." ctermfg=".s:orange." ctermbg=".s:none
exe "hi! Todo cterm=".s:none." ctermfg=".s:lightbrown." ctermbg=".s:none
exe "hi! Underlined cterm=".s:none." ctermfg=".s:darkpurple." ctermbg=".s:none
" :help spell   
exe "hi! SpellBad cterm=underline ctermfg=".s:none." ctermbg=".s:none
exe "hi! SpellCap cterm=underline ctermfg=".s:none." ctermbg=".s:none
exe "hi! SpellRare cterm=underline ctermfg=".s:none." ctermbg=".s:none
exe "hi! SpellLocal cterm=underline ctermfg=".s:none." ctermbg=".s:none
