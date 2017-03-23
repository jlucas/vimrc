if did_filetype()
	finish
endif
if getline(1) =~# '^#%Module'
	setfiletype tcl
endif
