" syn region  djangotagmarkers start="{{" end="}}"
" syn region  djangovariablemarkers start="{%" end="%}"
" command! -nargs=+ HiLink hi def link <args>
" HiLink djangotagmarkers djangoTagBlock
" HiLink djangovariablemarkers djangoTagBlock
" delcommand HiLink

