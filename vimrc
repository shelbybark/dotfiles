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

set number

set incsearch

set cpoptions+=$
set virtualedit=all

if has('mouse')
  set mouse=a
endif


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
if has("gui_running")
		set listchars=tab:▸\ ,eol:¬
endif


" auto-completes *****************************************************************
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS



autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType html set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType css set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4


" File Types *****************************************************************
autocmd FileType html set filetype=html.django_template " For SnipMate
autocmd FileType python set filetype=python.django " For SnipMate


autocmd BufRead,BufNewFile jquery.*.js *.js set filetype=javascript syntax=jquery

filetype plugin on




" Cursor highlights **************************************************************
set cursorline
"set cursorcolumn

" Colors *************************************************************************
""colorscheme ir_black
"colorscheme inspiration874125
"colorscheme xoria256
" colorscheme sunburst
colorscheme wombat256_alt
"colorscheme slate
"colorscheme django
"colo wombat
set t_Co=256 " 256 colors
set background=dark

map <F2> :NERDTreeToggle<CR>
map <F3> :set ft=html.django_template<CR>
map <F4> :setfiletype htmldjango<CR>


map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" For mac users (using the 'apple' key)
map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>


" http://stackoverflow.com/questions/2400264/is-it-possible-to-apply-vim-configurations-without-restarting/2400289#2400289
if has("autocmd")
  augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
  augroup END
endif

" Mappings for a recovering TextMate user {{{1
" Indentation {{{2
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Turn off menu bar in MacVim
set guioptions-=T
set guifont=Menlo:h12


" Non-gui
if !has("gui_running")
		colo ir_black
endif

" Set status bar the way we like it
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)


map <silent><F5> :NEXTCOLOR<cr>
map <silent><F6> :PREVCOLOR<cr>