" Vim color file
" Name: DarkTango
" Maintainer: Panos Laganakos <panos.laganakos@gmail.com>
" Version: 0.3

"#######################################################################
" Converted from a gvim scheme to a xterm256 scheme with utils from
" http://frexx.de/xterm-256-notes/
"
" After the conversion, I modified the colors slightly. -JRL 09/15/07
" Replaced 236 with 233.
" Replaced 166 with 208.
"#######################################################################

set background=dark
if version > 580
	" no guarantees for version 5.8 and below, but this makes it stop
	" complaining
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name="darktango"

hi Normal	ctermbg=236	 ctermfg=252	

" {{{ syntax
hi Comment	ctermfg=240	
hi Title	ctermfg=7	
hi Underlined	ctermfg=39	 cterm=none
hi Statement	ctermfg=102	
hi Type		ctermfg=208	
hi PreProc	ctermfg=7	 
hi Constant	ctermfg=250	
hi Identifier	ctermfg=208	 
hi Special	ctermfg=7	
hi Ignore	ctermfg=208	
hi Todo		ctermbg=208	 ctermfg=7	
"hi Error
"}}}

" {{{ groups
hi Cursor	ctermbg=250	 ctermfg=236
"hi CursorIM
hi Directory	ctermfg=152	
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit	ctermbg=240	 ctermfg=236	 cterm=none
hi Folded	ctermbg=240	 ctermfg=7	
hi FoldColumn	ctermbg=236	 ctermfg=240	
hi LineNr	ctermbg=236	 ctermfg=240	
hi MatchParen	ctermbg=250	 ctermfg=236	
hi ModeMsg	ctermfg=208	
hi MoreMsg	ctermfg=208	
hi NonText	ctermbg=236	 ctermfg=240	
hi Question	ctermfg=146	
hi Search	ctermbg=221	 ctermfg=178	
hi IncSearch	ctermbg=178	 ctermfg=221	
hi specialkey	ctermfg=208	
hi statusline	ctermbg=240	 ctermfg=7	 cterm=none
hi statuslinenc	ctermbg=240	 ctermfg=235	 cterm=none
hi visual	ctermbg=215	 ctermfg=208	 
"hi VisualNOS
hi WarningMsg	ctermfg=209	
"hi WildMenu
"hi Menu
"hi Scrollbar  ctermbg=239	 ctermfg=180	
"hi Tooltip
hi Pmenu	ctermbg=250	 ctermfg=240	
hi PmenuSel	ctermbg=7	 ctermfg=236	
hi CursorLine	ctermbg=235	
" }}}

"  {{{ terminal
" TODO
" }}}

"vim: sw=4
