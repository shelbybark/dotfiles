" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Menlo:h12             " Font family and font size.
"set guifont=Inconsolta:h12             " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=dark               " Background.
set lines=200 columns=200         " Window dimensions.

" Uncomment to use.
set guioptions-=r                 " Don't show right scrollbar
set guioptions-=L                 " Don't show right scrollbar

set fuoptions=maxvert,maxhorz     " really go full screen


"colorscheme solarized
"colorscheme vilight
colorscheme badwolf

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
"let g:airline_theme             = 'powerlineish'
" let g:airline_enable_branch     = 1
" let g:airline_enable_syntastic  = 1

" vim-powerline symbols
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'

let g:NERDTreeDirArrows=1
