fun! s:DetectOcioConfig()
	if did_filetype()
		return
	endif
	if search('ocio_profile_version:', 'n', '25')
		setfiletype yaml
	endif
endfun

au BufRead,BufNewFile *.ocio set filetype=yaml
au BufRead,BufNewFile * call s:DetectOcioConfig()

