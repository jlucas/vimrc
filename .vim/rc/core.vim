" vim: expandtab

" General options
set nocompatible               " Don't make vim behave like vi
set hidden					   " Buffer switching w/o saving
set bs=indent,start,eol        " Backspace over everything in
                               " insert mode (except n & t)
set ruler                      " Show row/column position
set shiftwidth=4
set tabstop=4
set softtabstop=4              " Hangle groups of four spaces
                               " as a tab when deleting
set ai                         " Auto-indent
set showmode                   " Show INSERT, VISUAL, etc
set ignorecase                 " Ignore case on searches
set smartcase                  " Do case-sensitive searches
                               " when search string contains
                               " capitals
set shortmess=lnrxIT           " Get rid of splash screens
set nohls                      " Don't use search highlighting
set pastetoggle=<F3>           " Allow F3 to toggle paste mode
set textwidth=0                " Unlimited line length by
                               " default
set cursorline                 " Highlight the current line
set nrformats-=octal           " Don't treat zero-padded
                               " numbers as octal when using
                               " C-a/C-x
set wmh=0                      " Sets min split size
set wmw=0                      " Sets min vsplit size
set tags=./tags;/              " Look for tags file in current
                               " dir, up through root
set laststatus=2               " Always show the status bar
set splitright                 " Open vsplits on the right
set splitbelow                 " Open splits on the bottom
set noerrorbells               " No bells at all
set scrolloff=2                " Two lines below cursor, always
set t_kb=                    " XXX: Set backspace
syn on                         " Syntax highlighting on
set sessionoptions =           " Cleaner session files
            \"blank,".         " in case you want to change
            \"buffers,".       " your vimrc
            \"curdir,".
            \"folds,".
            \"globals,".
            \"resize,".
            \"winsize,".
            \"tabpages"


if has('mouse')
  set mouse+=a
endif

if !has('win32')
    behave xterm
endif

if has('unix')
	set directory=/tmp/jlucas/vim  " Set swp file dir
	set backupdir=/tmp/jlucas/vim  " Set backup dir
	exec 'call system("mkdir -pv -m 700 /tmp/jlucas/vim")'
endif

" Cant resize vim splits inside tmux?
" http://superuser.com/questions/549930
if &term =~ '^screen'
    set ttymouse=xterm2
endif

"-------------------------------------------------------------
" File encoding
"-------------------------------------------------------------
" http://wiki.mutt.org/?MuttFaq/Charset
set encoding&       " terminal charset: follow current locale
set termencoding=
set fileencodings=  " charset auto-sensing: disabled
set fileencoding&   " auto-sensed charset of current buffer

