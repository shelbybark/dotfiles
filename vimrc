set softtabstop=4
set shiftwidth=4

" set our tabs to four spaces
set ts=4

" turn syntax highlighting on by default
syntax on

" set auto-indenting on for programming
set ai

" turn off compatibility with the old vi
set nocompatible

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" do not highlight words when searching for them. it's distracting.
set nohlsearch

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

"colo wombat

set number

" set cursorline


set mouse=a


" auto-completes *****************************************************************
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

filetype plugin on


" Cursor highlights **************************************************************
set cursorline
"set cursorcolumn

" Colors *************************************************************************
colorscheme ir_black
"colorscheme xoria256
"colorscheme sunburst
"colorscheme slate
"colorscheme django
set t_Co=256 " 256 colors
set background=dark

map <F2> :NERDTreeToggle<CR>
map <F4> :setfiletype htmldjango<CR>
