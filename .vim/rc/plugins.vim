" vim: expandtab

"-------------------------------------------------------------
" grep
"-------------------------------------------------------------
command! -nargs=+ Grep execute 'silent grep! <args>' | copen 42

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
        hi TrailingWhitespace cterm=underline ctermfg=214
        match TrailingWhitespace /\s\+$/
    else
        match TrailingWhitespace //
        unlet b:highlight_trailing_whitespace
    endif
endfun

"-------------------------------------------------------------
" html preview
"-------------------------------------------------------------

function! ViewHtmlText(url)
  if !empty(a:url)
    new
    setlocal buftype=nofile bufhidden=hide noswapfile
    execute 'r !elinks ' . a:url . ' -dump -dump-width ' . winwidth(0)
    1d
  endif
endfunction

"-------------------------------------------------------------
" colorcolumn
"-------------------------------------------------------------
function! ColorColumnTextwidth()
    if !exists('b:colorcolumn_textwidth')
        highlight ColorColumn ctermbg=214 ctermfg=236
        let b:colorcolumn_textwidth = matchadd('ColorColumn', '\%'.&textwidth.'v', 100)
    else
        call matchdelete(b:colorcolumn_textwidth)
        unlet b:colorcolumn_textwidth
    endif
endfun

"-------------------------------------------------------------
" window swap
"-------------------------------------------------------------
function! WinBufSwap()
    if !exists('g:window_to_swap')
        let g:window_to_swap = winnr()
        let g:buffer_to_swap = bufnr('%')
        echo "Flagged window " . winnr() . " for swapping."
    else
        let thiswin = winnr()
        let thisbuf = bufnr('%')
        exec g:window_to_swap . " wincmd w" . "|" .
                    \ "buffer " . thisbuf . "|" .
                    \ thiswin . " wincmd w" . "|" .
                    \ "buffer " . g:buffer_to_swap
        unlet g:window_to_swap
        unlet g:buffer_to_swap
    endif
endfun

"-------------------------------------------------------------
" common lisp folding
"-------------------------------------------------------------
" From: https://gist.githubusercontent.com/MicahElliott/3049202/raw/cd2b714969c9b2f781ef02f16001807cf96eeae9/vim

" ---------------------------------------------------------------------------
"  Automagic Clojure folding on defn's and defmacro's
"
" Blog post: http://writequit.org/blog/?p=413

function! GetLispFold()
      if getline(v:lnum) =~ '^\s*(defun.*\s'
            return ">1"
      elseif getline(v:lnum) =~ '^\s*(def\(class\|macro\|method\|page\|partial\).*\s'
            return ">1"
      elseif getline(v:lnum) =~ '^\s*(defmethod.*\s'
            return ">1"
      elseif getline(v:lnum) =~ '^\s*$'
            let my_cljnum = v:lnum
            let my_cljmax = line("$")

            while (1)
                  let my_cljnum = my_cljnum + 1
                  if my_cljnum > my_cljmax
                        return "<1"
                  endif

                  let my_cljdata = getline(my_cljnum)

                  " If we match an empty line, stop folding
                  if my_cljdata =~ '^$'
                        return "<1"
                  else
                        return "="
                  endif
            endwhile
      else
            return "="
      endif
endfunction

function! TurnOnLispFolding()
      setlocal foldexpr=GetLispFold()
      setlocal foldmethod=expr
endfunction

" Simplify the fold display
function! MinimalFoldText()
  return getline(v:foldstart)
endfunction
set foldtext=MinimalFoldText()

autocmd FileType lisp call TurnOnLispFolding()

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
au FileType lisp set commentstring=\;\;\ %s

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
" My mods to slime.vim to support nuke.vim
nnoremap <leader>N :let g:slime_target = 'nuke'<CR>

"-------------------------------------------------------------
" slimv
"-------------------------------------------------------------
let g:slimv_leader = '\'
let g:paredit_leader = ","
let g:paredit_electric_return = 0
let g:slimv_repl_syntax = 1
"let g:slimv_clhs_root = "/home/jlucas/src/lisp/HyperSpec/Body/"
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
au FileType netrw nnoremap cd :exec ":Ntree ".input("Change directory: ")<CR>

" preview audio files with aplay
au FileType netrw set makeprg=mplayer
au FileType netrw nnoremap zx :silent make! <C-R>=shellescape(split(getline('.'), '\*')[0])<CR><CR>:redraw!<CR>

"-------------------------------------------------------------
" Simpylfold (Python code folding)
"-------------------------------------------------------------
let g:SimpylFold_docstring_preview = 1
" Open all folds by default
au FileType python normal zR

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

"-------------------------------------------------------------
" vim-signify
"-------------------------------------------------------------
" This list should be as small as possible per the docs.
let g:signify_vcs_list = ['git', 'hg', 'svn']

