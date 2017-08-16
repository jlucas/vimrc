" fun! s:DetectModulefile()
" 	if did_filetype()
" 		return
" 	endif
" 	if getline(1) =~# '^#%Module'
" 		setfiletype tcl
" 	endif
" endfun

au BufRead,BufNewFile *.module set filetype=tcl
" au BufRead,BufNewFile * call s:DetectModulefile()

