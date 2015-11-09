" vim: expandtab

set statusline=%t       "tail of the filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=\ %y    "filetype
if exists('g:loaded_fugitive')
    set statusline+=\ %{fugitive#statusline()} " git branch from vim-fugitive
endif
set statusline+=%r      "read only flag
set statusline+=\ %m    "modified flag
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

