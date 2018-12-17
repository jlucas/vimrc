" vim: expandtab

"-------------------------------------------------------------
" colorscheme
"-------------------------------------------------------------
" xterm16
" http://www.math.cmu.edu/~gautam/per/opensource/xterm16/xterm16-doc.html
let xterm16_colormap = 'allblue'  " Allblue, soft, softlight, standard
let xterm16_brightness = 'med'  " Low, med, high, or default (med)
if !has('gui_running')
    let xterm16bg_Normal = 'none'  " Allow transparent bg in terminal
endif

fun! Xterm16Brightness(value)
    let g:xterm16_brightness = a:value
    color xterm16
endfun
command! Xmed exec Xterm16Brightness('med')
command! Xhigh exec Xterm16Brightness('high')

" solarized
" http://ethanschoonover.com/solarized
" When room lighting dictates a light colorscheme I use this.
let g:solarized_termcolors = 256
let g:solarized_termtrans = 0
"set background = light

color jlucas-allblues

