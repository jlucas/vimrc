"-------------------------------------------------------------
" leader bindings
"-------------------------------------------------------------
" http://stackoverflow.com/questions/446269
nnoremap <space> <nop>
let mapleader = "\<space>"

" Run visual selection through column(1) when | is pressed
vnoremap <silent> <bar> :!column -t<CR>

" Write file fast
map <silent> <leader>w :w<CR>

" Quit fast
map <silent> <leader>q :qa<CR>
map <silent> <leader>Q :qa!<CR>

" Open new file fast
nnoremap <leader>e :e<space>

" Switch buffer fast
nnoremap <leader>b :b<space>
" vim-unimpaired: [b and ]b for :bp and :bn

" Open BufExplorer
nnoremap <silent> <leader>B :ToggleBufExplorer<CR>

" Open splits fast
nnoremap <silent> <leader>v :vsplit<CR>
nnoremap <silent> <leader>s :split<CR>

" Close a split fast
nnoremap <leader>c <C-w>c

" Zoom a window, ala tmux
map <silent> <leader>z :ZoomWin<CR>

" Toggle line numbers
"map <silent> <leader>n :set nu!<CR>
" replaced by vim-unimpaired: [on and ]on

" Markdown h1
nmap <leader>1 yypVr=

" Markdown h2
nmap <leader>2 yypVr-

" Source the buffer as vimscript
nmap <leader>VS :%y"<CR>:@"<CR>

" Source the visual range as vimscript
vnoremap <leader>vs y:@"<CR>

" Format paragraph
nmap <silent> <leader>f vipgq

" Add email signature
nnoremap <leader>xsig i-- <Esc>:r ~/.sig<CR>

" Highlight trailing whitespace
map <silent> <leader>htw :call HighlightTrailingWhitespace()<CR>

" Remove trailing whitespace
map <leader>rtw :s/\s\+$//<CR>

" Toggle quickfix window
nnoremap <leader>o :QFix<CR>

" Toggle jumplist in quickfix window
nnoremap <leader>j :Jumps<CR>

" Keybinds to quickly disable automatic formatting for editing
" headers in mutt.  There should be a way to do this for
" regions in a file using the filetype plugin.  See:
nnoremap <leader>h :set fo-=a<CR>
nnoremap <leader>H :set fo+=a<CR>

" To highlight the current line, and have the highlighting
" stay where it is when the cursor is moved, use this mapping:
nnoremap <silent> <leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

" Enter :match to clear the highlight, or map that to a
" keystroke like so:
nnoremap <leader>m :match<CR>

" Invoke netrw
map <silent> <leader><CR> :Ex<CR>

" Invoke fugitive git-diff
nmap <leader>gd :tabedit %<CR>:Gdiff<CR>

" Quit fugitive git-diff
nmap <leader>gq :tabclose!<CR>

" Still need this for xterm16 scheme when changing brightness
nnoremap <leader>hc :hi CursorLine cterm=none ctermbg=234 guibg=#202020 guifg=none<CR>

"-------------------------------------------------------------
" normal mode maps
"-------------------------------------------------------------
nnoremap <silent> <F9> :TagbarToggle<CR>

" Move up or down a split, and maximize it.
nnoremap <C-J> <C-W>j<C-W>_
nnoremap <C-K> <C-W>k<C-W>_

" Move around splits with alt-hjkl
" These maps make v_b_i a bit weird.  You either have to wait
" for the timeout after pressing <Esc> or use <C-c> to
" terminate the v_b_i.
execute "set <M-h>=\eh"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

" Print highlight group for the character under the cursor
" For debugging colorschemes
map <F10> :echo "hi<" .
    \ synIDattr(synID(line("."),col("."),1),"name") . "> trans<" .
    \ synIDattr(synID(line("."),col("."),0),"name") . "> lo<" .
    \ synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"-------------------------------------------------------------
" command mode maps
"-------------------------------------------------------------
" Emacs bindings in command line mode in command line mode.
" see:
" https://github.com/maxbrunsfeld/vim-emacs-bindings/blob/master/plugin/emacs-bindings.vim
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-a> <Home>
cmap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-k> <C-f>D<C-c><C-c>:<Up>
" Open command edit window and start me off with one movement
" by word
cnoremap f <C-f>e
cnoremap b <C-f>b

" Forgot to sudo before editing a file?
cmap w!! w !sudo tee >/dev/null %

"-------------------------------------------------------------
" visual mode maps
"-------------------------------------------------------------
" Enable exiting of visual block insert mode with C-c
vnoremap <C-c> <Esc>

