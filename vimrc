filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
call vundle#begin()


 " let Vundle manage Vundle
 " required!
 " On Fresh vim, type this:
 " git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
Plugin 'gmarik/vundle'
 " On Fresh vim, type this:
 " git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

 " My Bundles here:
 "
 " original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'tomtom/tlib_vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'zeis/vim-kolor'
Plugin 'jonathanfilip/vim-lucius'
"Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-surround'
Plugin 'matthewtodd/vim-twilight'
Plugin 'vim-scripts/twilight256.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'shelbybark/vilight'
Plugin 'vim-htmldjango_omnicomplete'
Plugin 'django.vim'
Plugin 'tomasr/molokai'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'jQuery'
"Plugin "Plugin 'git://git.wincent.com/command-t.git'"
"Plugin 'mattn/zencoding-vim'
"Plugin 'mattn/emmet-vim'
Plugin 'rstacruz/sparkup'
Plugin 'toranb/vim-django-support'
Plugin 'Raimondi/delimitMate'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'jwhitley/vim-matchit'
Plugin 'zenorocha/dracula-theme'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'

Plugin 'morhetz/gruvbox'

"Plugin 'flazz/vim-colorschemes'



" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on     " required!

" *********************************************
" *                 Settings                  *
" *********************************************


set encoding=utf-8
syntax enable
filetype plugin indent on         " load file type plugins + indentation

"set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set showmatch                     " Show matching brackets/parenthesis

"set nowrap                        " don't wrap lines
set wrap
set textwidth=79
set formatoptions=qrn1
set linebreak
set showbreak=...
set colorcolumn=80
set tabstop=2 shiftwidth=2        " a tab is two spaces (or set this to 4)
set expandtab                     " use spaces, not tabs (optional)
set backspace=indent,eol,start    " backspace through everything in insert mode"
set autoindent                    " match indentation of previous line

set incsearch                     " Find as you type search
set hlsearch                      " Highlight search terms
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set foldmethod=indent             "fold based on indent
set foldnestmax=3                 "deepest fold is 3 levels
set nofoldenable                  "dont fold by default

"set hidden                        " Handle multiple buffers better.
set title                         " Set the terminal's title
set number                        " Show line numbers.
set ruler                         " Show cursor position.
"set wildmode=list:longest         " Complete files like a shell.
"set wildmenu                      " Enhanced command line completion.
set wildignore=*.o,*.obj,*~,*.pyc       "stuff to ignore when tab completing
set novisualbell
set noerrorbells
set history=1000                  " Store lots of :cmdline history

set scrolloff=3
set sidescrolloff=7

set mouse-=a
set mousehide
set ttymouse=xterm2
set sidescroll=1

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
"set directory=/tmp                " Keep swap files in one location
set directory=$HOME/.vim_swp/
set timeoutlen=500

set laststatus=2                  " Show the status line all the time
set statusline=[%n]\ %{fugitive#statusline()}\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set t_Co=256                      " Set terminal to 256 colors
"
" Cursor highlights **************************************************************
set cursorline

" Colorscheme
set background=dark
"colorscheme molokai
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme molokai


autocmd FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd FileType css setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType python set ft=python.django
au FileType html set ft=htmldjango.html
au FileType html let delimitMate_matchpairs = "(:),[:]"


" *********************************************
" *                 Functions                 *
" *********************************************

" Ack current word in command mode
function! AckGrep()
  let command = "ack ".expand("<cword>")
  cgetexpr system(command)
  cw
endfunction

function! AckVisual()
  normal gv"xy

  let escape_chars = ['(', ')']
  for char in escape_chars
    let @x = escape(@x, char)
  endfor

  let command = "ack ".shellescape(@x)
  cgetexpr system(command)
  cw
endfunction

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

" *********************************************
" *               Key Bindings                *
" *********************************************
let mapleader = ","

" Clear last search highlighting
nnoremap <Space> :noh<cr>

" Easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Insert blank lines without going into insert mode
nmap go o<esc>
nmap gO O<esc>

" Shortcut for =>
imap <C-l> <Space>=><Space>

" Search and remove ^m line endings
noremap <leader>xm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" indent/unindent visual mode selection with tab/shift+tab
"vmap <tab> >gv
"vmap <s-tab> <gv

" F7 reformats the whole file and leaves you where you were (unlike gg)
map <silent> <F7> mzgg=G'z :delmarks z<CR>:echo "Reformatted."<CR>

" open files in directory of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" rename current file
map <leader>n :call RenameFile()<cr>

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

nnoremap <tab> %
vnoremap <tab> %

" File tree browser - backslash
map <F2> :NERDTreeToggle<CR>
map <leader>t :NERDTreeToggle<cr>
" File tree browser showing current file - pipe (shift-backslash)
map \| :NERDTreeFind<CR>

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

" Mappings for a recovering TextMate user {{{1
" Indentation {{{2
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

map <F3> :%! tidy -q -i -ashtml % <CR>

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" copy current line, paste after this line, replace all characters with '='
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-

" zencoding settings
"let g:user_zen_expandabbr_key = '<c-e>'
"let g:user_zen_next_key = '<c-n>'

" emmet settings
"let g:user_emmet_leader_key='<C-Z>'

let NERDTreeIgnore=['\.pyc$', '\~$']
let g:NERDTreeDirArrows=0

if has('mouse')
  set mouse=a
endif

" Control-tab for auto-complete
inoremap <C-TAB> <C-X><C-O>

" 'space' runs macro 'q'
:noremap <Space> @q

let delimitMate_expand_cr=1
"
" Use the same symbols as TextMate for tabstops and EOLs
if has("gui_running")
		set listchars=tab:▸\ ,eol:¬,trail:·
        highlight SpellBad term=underline gui=undercurl guisp=Orange
        " Ready for new persistent undos
        set undofile
        set undodir=~/.undo
endif

let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Airline Settings
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_detect_paste=1
"let g:airline_theme='badwolf'
"let g:airline_theme='kalisi'
let g:airline_theme='luna'

"let g:Powerline_symbols = 'fancy'

" let g:lucius_style='dark'
" let g:contrast='high'
" let g:lucius_contrast_bg='high'

set pastetoggle=<F5>
set pastetoggle=<leader>p

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:molokai_original = 1
let g:rehash256 = 1


" *********************************************
" *        Local Vimrc Customization          *
" *********************************************
if filereadable(expand('~/.vimrc.local'))
  so ~/.vimrc.local
endif