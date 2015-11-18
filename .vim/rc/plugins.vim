"-------------------------------------------------------------
" csound
"-------------------------------------------------------------
function! RunCsound()
    if exists("b:pid")
        let dead = system("kill ".b:pid)
    endif
    let b:currentln = line(".")
    let b:csndcmd =
                \substitute(getline(search("^; csound")), "; csound: ", "", "")
    echo b:csndcmd
    let b:pid = system("".b:csndcmd." \&; echo $!")
    unlet b:currentln
endfun

map <F5> :call RunCsound()<CR>

"-------------------------------------------------------------
" whitespace
"-------------------------------------------------------------
function! HighlightTrailingWhitespace()
    if !exists('b:highlight_trailing_whitespace')
        let b:highlight_trailing_whitespace = 1
        hi TrailingWhitespace ctermbg=36 guibg=#00af87
        match TrailingWhitespace /\s\+$/
    else
        match TrailingWhitespace //
        unlet b:highlight_trailing_whitespace
    endif
endfun

"-------------------------------------------------------------
" quickfix
"-------------------------------------------------------------
" From: http://vim.wikia.com/wiki/Toggle_to_open_or_close_the_quickfix_window
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction

"-------------------------------------------------------------
" email
"-------------------------------------------------------------
function! Email()
    set fo=tcrqanw
    set comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:*
    set textwidth=70
    set expandtab
endfun

command! Email exec Email()

"-------------------------------------------------------------
" vim-commentary
"-------------------------------------------------------------
au FileType lisp set commentstring=;%s

"-------------------------------------------------------------
" tagbar
"-------------------------------------------------------------
let g:tagbar_sort = 'Order'
" markdown support
" see: https://github.com/majutsushi/tagbar/issues/70
let g:tagbar_type_markdown = {
        \ 'ctagstype' : 'markdown',
        \ 'kinds' : [
            \ 'h:headings',
            \ 'l:links',
            \ 'i:images'
            \ ],
        \ "sort" : 0
        \ }

"-------------------------------------------------------------
" vim-slime
"-------------------------------------------------------------
let g:slime_target = 'tmux'
let g:slime_no_mappings = 1
let g:slime_python_ipython = 1
" Try to match slimv's bindings
nmap \d <Plug>SlimeParagraphSend
nmap \e <Plug>SlimeLineSend
nmap \c <Plug>SlimeConfig
xmap \d <Plug>SlimeRegionSend

"-------------------------------------------------------------
" slimv
"-------------------------------------------------------------
let g:slimv_leader = '\'
let g:paredit_leader = ","
let g:paredit_electric_return = 0
let g:slimv_repl_syntax = 1
"let g:slimv_swank_clojure = '! tmux new-window lein ritz 4005 &'

"-------------------------------------------------------------
" BufExplorer
"-------------------------------------------------------------
" Prevent BufExplorer from setting up its own leader mappings,
" because we want to use <leader>b for :b
nnoremap <silent> <F11> :BufExplorer<CR>
"nnoremap <silent> <s-F11> :ToggleBufExplorer<CR>
nnoremap <silent> <m-F11> :BufExplorerHorizontalSplit<CR>
nnoremap <silent> <c-F11> :BufExplorerVerticalSplit<CR>
let g:bufExplorerShowRelativePath = 1

"-------------------------------------------------------------
" arc
"-------------------------------------------------------------
let g:arc_rainbow = 1
let g:arc_detect_atstrings = 1
let g:arc_bodops = 1
let g:arc_highlight_lispwords = 1

"-------------------------------------------------------------
" Netrw
"-------------------------------------------------------------
if v:version >= 703
    au FileType netrw nnoremap <buffer> q :Rex<CR>
endif
" change directory
au FileType netrw nnoremap cd
            \:exec ":Ntree ".input("Change directory: ")<CR>
" preview audio files with aplay
au FileType netrw set makeprg=aplay\ -D\ jack
au FileType netrw nnoremap zx
            \:Make! <C-R>=shellescape(getline('.'))<CR><CR>

"-------------------------------------------------------------
" Simpylfold (Python code folding)
"-------------------------------------------------------------
let g:SimpylFold_docstring_preview = 1

"-------------------------------------------------------------
" table-mode
"-------------------------------------------------------------
let g:table_mode_corner_corner = '+'

"-------------------------------------------------------------
" vim-orgmode
"-------------------------------------------------------------
let g:org_todo_keywords = ['TASK(t)', 'SCHEDULED(s)',
            \'FEEDBACK(f)', 'ONHOLD(h)', 'BLOCKED(b)', '|',
            \'DONE(d)', 'DELEGATED(g)', 'CANCELLED(c)']
