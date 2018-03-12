fun! s:DetectOcioConfig()
	if did_filetype()
		return
	endif
	if search('ocio_profile_version:') 
		setfiletype yaml
	endif
endfun

au BufRead,BufNewFile *.ocio set filetype=yaml
au BufRead,BufNewFile * call s:DetectOcioConfig()
