" A vim theme for terminals with white backgrounds.
" Nathan Forbes

highlight clear normal
set background&

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "for-white-background"

highlight normal ctermfg=none cterm=none
highlight comment ctermfg=yellow cterm=none
highlight constant ctermfg=none cterm=bold
highlight string ctermfg=green cterm=none
highlight character ctermfg=magenta cterm=none
highlight boolean ctermfg=none cterm=none
highlight number ctermfg=cyan cterm=none
highlight float ctermfg=cyan cterm=none
highlight identifier ctermfg=blue cterm=none
highlight function ctermfg=none cterm=bold
highlight statement ctermfg=none cterm=bold
highlight conditional ctermfg=none cterm=bold
highlight repeat ctermfg=none cterm=bold
highlight label ctermfg=none cterm=bold
highlight operator ctermfg=none cterm=bold
highlight keyword ctermfg=none cterm=bold
highlight exception ctermfg=none cterm=bold
highlight preproc ctermfg=blue cterm=none
highlight include ctermfg=blue cterm=none
highlight define ctermfg=darkblue cterm=none
highlight macro ctermfg=darkblue cterm=none
highlight precondit ctermfg=blue cterm=none
highlight type ctermfg=none cterm=bold
highlight storageclass ctermfg=none cterm=bold
highlight structure ctermfg=none cterm=bold
highlight typedef ctermfg=none cterm=bold
highlight special ctermfg=magenta cterm=none
highlight tag ctermfg=darkcyan cterm=none
highlight specialchar ctermfg=magenta cterm=none
highlight delimiter ctermfg=none cterm=bold
highlight debug ctermfg=none cterm=none
highlight search ctermbg=red ctermfg=white cterm=none
highlight matchparen ctermbg=none cterm=inverse
highlight ignore ctermfg=darkgray cterm=none
highlight error ctermbg=red cterm=none
highlight todo ctermbg=cyan cterm=none
highlight pmenu ctermbg=none cterm=inverse
highlight pmenusel ctermbg=grey cterm=none
highlight pmenusbar ctermbg=grey cterm=none
highlight pmenuthumb ctermbg=yellow cterm=none
