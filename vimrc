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

set scrolloff=5

set cpoptions+=$

set linebreak

set ignorecase
set smartcase



" Allow cursor to move anywhere.
set virtualedit=all

if has('mouse')
  set mouse=a
endif

let mapleader = ","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Set alt esc
"inoremap kj <Esc>

" folding toggle
:nnoremap <space> za
 
" Use the same symbols as TextMate for tabstops and EOLs
if has("gui_running")
		set listchars=tab:▸\ ,eol:¬
        highlight SpellBad term=underline gui=undercurl guisp=Orange 
        " Ready for new persistent undos
        set undofile
        set undodir=~/.undo
endif




autocmd FileType * set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType html set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType css set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4


" File Types *****************************************************************

autocmd FileType html set filetype=htmldjango.html.django_template " For SnipMate
autocmd FileType python set filetype=python.django " For SnipMate


autocmd BufRead,BufNewFile jquery.*.js *.js set filetype=javascript syntax=jquery

filetype on
filetype plugin on




" Cursor highlights **************************************************************
set cursorline
"set cursorcolumn

" Colors *************************************************************************
""colorscheme ir_black
"colorscheme inspiration874125
"colorscheme xoria256
" colorscheme sunburst
"colorscheme wombat256_alt
colorscheme vilight
"colorscheme slate
"colorscheme django
"colo wombat
set t_Co=256 " 256 colors
set background=dark

map <F2> :NERDTreeToggle<CR>

map <F3> :%! tidy -q -i -ashtml % <CR>


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

vmap <D-j> gj
vmap <D-k> gk
"vmap <D-4> g$
"map <D-6> g^
"map <D-0> g^


" http://stackoverflow.com/questions/2400264/is-it-possible-to-apply-vim-configurations-without-restarting/2400289#2400289
"if has("autocmd")
"  augroup myvimrchooks
"	au!
"	autocmd bufwritepost .vimrc source ~/.vimrc
"  augroup END
"endif

" Mappings for a recovering TextMate user {{{1
" Indentation {{{2
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv


" Non-gui
if !has("gui_running")
		""colo ir_black
		colo molokai
endif

set laststatus=2

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



" zencoding settings
let g:user_zen_expandabbr_key = '<c-e>'
let g:user_zen_next_key = '<c-n>'
let NERDTreeIgnore=['\.pyc$', '\~$'] 

function LoadDjangoGoodies()

	" Django customization
	" it only works if you are at base of django site
	if filewritable('settings.py')

		" set DJANGO_SETTINGS_MODULE
		let $DJANGO_SETTINGS_MODULE=split( getcwd(),'/')[-1].".settings"
		" set right type of file, python.django for .py files,
		" htmldjango.django_template.xhtml or htmldjango.django_template.html
		" for html files. This bigname for html ft is to use both syntax of
		" Dave Hodder and SnipMate of Michael Sanders (and xhtml/html goodies
		" too)
		let l:escapefromhere=0
    	if &ft=="python"
			set ft=python.django
		elseif &ft=="html" || &ft=="xhtml"
			set ft=htmldjango.html
		else
			let l:escapefromhere=1
		endif

		if l:escapefromhere == 0
			" Set python path on enviroment, vim and python
			" if you are at /www/mysite/ we add to path /www and /www/mysite
			" so can complete mysite.
			let $PYTHONPATH .= ":/".join(split( getcwd(),'/')[0:-2],'/')."/:/".join(split( getcwd(),'/')[0:-1],'/')."/"
			exec "set path+='/".join(split( getcwd(),'/')[0:-2],'/')."/,/".join(split( getcwd(),'/')[0:-1],'/')."/'"
			python import os,sys,vim
			exec "python sys.path.insert(0,'/".join(split( getcwd(),'/')[0:-2],'/')."')"
			exec "python sys.path.insert(0,'/".join(split( getcwd(),'/')[0:-1],'/')."')"

		endif
	endif
endfunction


" Python customization {
function LoadPythonGoodies()

	if &ft=="python"||&ft=="html"||&ft=="xhtml"

		" settings for django, for something unknow I need to call before python
		" path set
		call LoadDjangoGoodies()

		" set python path to vim
    	python << EOF
import os, sys, vim

for p in sys.path:
    if os.path.isdir(p):
		vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

		" some nice adjustaments to show errors
    	syn match pythonError "^\s*def\s\+\w\+(.*)\s*$" display 
		syn match pythonError "^\s*class\s\+\w\+(.*)\s*$" display 
		syn match pythonError "^\s*for\s.*[^:]\s*$" display 
		syn match pythonError "^\s*except\s*$" display 
		syn match pythonError "^\s*finally\s*$" display 
		syn match pythonError "^\s*try\s*$" display 
		syn match pythonError "^\s*else\s*$" display 
		syn match pythonError "^\s*else\s*[^:].*" display 
		"syn match pythonError "^\s*if\s.*[^\:]$" display 
		syn match pythonError "^\s*except\s.*[^\:]$" display 
		syn match pythonError "[;]$" display 
		syn keyword pythonError         do  

    	let python_highlight_builtins = 1
    	let python_highlight_exceptions = 1
    	let python_highlight_string_formatting = 1
    	let python_highlight_string_format = 1
    	let python_highlight_string_templates = 1
    	let python_highlight_indent_errors = 1
    	let python_highlight_space_errors = 1
    	let python_highlight_doctests = 1

		" complain to PEP 8 (Style Guide for Python Code) : http://www.python.org/dev/peps/pep-0008/
		set ai tw=79 ts=4 sts=4 sw=4 et
	
	endif

endfunction

if !exists("myautocmds")
	let g:myautocmds=1

	"call LoadPythonGoodies()
	"autocmd Filetype python,html,xhtml call LoadPythonGoodies()
	au BufNewFile,BufRead *.py,*.html call LoadPythonGoodies()

	" Omni completion
	autocmd FileType python set omnifunc=pythoncomplete#Complete
	autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
	autocmd FileType css set omnifunc=csscomplete#CompleteCSS
endif

map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

" TwitVim settings
let twitvim_browser_cmd = 'open -a Google\ Chrome'
let g:twitvim_enable_python=1

map <LocalLeader>tf :FriendsTwitter<cr>

" Perl, Python, shell scripts and javascript visual mode commenting 
"autocmd BufNewFile,BufRead *.py,*.pl,*.sh vmap u :-1/^#/s///<CR>
"autocmd BufNewFile,BufRead *.py,*.pl,*.sh vmap c :-1/^/s//#/<CR>
 
"autocmd BufNewFile,BufRead *.js vmap u :-1/^\/\//s///<CR>
"autocmd BufNewFile,BufRead *.js vmap c :-1/^/s//\/\//<CR>

"let g:xml_syntax_folding=1
"au FileType xml setlocal foldmethod=syntax

function! s:Terminal()
  execute 'ConqueTermSplit bash --login'
endfunction
command! Terminal call s:Terminal()

let g:ConqueTerm_Color = 0
let g:ConqueTerm_TERM = 'vt100'
let g:ConqueTerm_ReadUnfocused = 0
let g:ConqueTerm_CWInsert = 0

let g:ConqueTerm_PromptRegex = '^\w\+@[0-9A-Za-z_.-]\+:[0-9A-Za-z_./\~,:-]\+\$'




