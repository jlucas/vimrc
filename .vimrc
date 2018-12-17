"-------------------------------------------------------------
" jlucas .vimrc
" vim: expandtab
"-------------------------------------------------------------

source ~/.vim/rc/core.vim
source ~/.vim/rc/statusline.vim
source ~/.vim/rc/filetype.vim
source ~/.vim/rc/maps.vim
source ~/.vim/rc/plugins.vim
source ~/.vim/rc/pathogen.vim
source ~/.vim/rc/color.vim
let $sitefile=expand("~/.vim/rc/site.vim")
if filereadable($sitefile)
   source $sitefile
endif
let $localfile=expand("~/.vim/rc/local.vim")
if filereadable($localfile)
    source $localfile
endif

