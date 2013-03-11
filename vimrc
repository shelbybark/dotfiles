filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'Townk/vim-autoclose'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle 'garbas/vim-snipmate'
Bundle 'tpope/vim-surround'
Bundle 'matthewtodd/vim-twilight'
Bundle 'vim-scripts/twilight256.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'shelbybark/vilight'
Bundle 'vim-htmldjango_omnicomplete'
Bundle 'django.vim'
Bundle 'tomasr/molokai'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'jQuery'
Bundle "Bundle 'git://git.wincent.com/command-t.git'"
Bundle 'mattn/zencoding-vim'
Bundle 'toranb/vim-django-support'
Bundle 'Raimondi/delimitMate'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

 


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
"set colorcolumn=85
set tabstop=2 shiftwidth=2        " a tab is two spaces (or set this to 4)
set expandtab                     " use spaces, not tabs (optional)
set backspace=indent,eol,start    " backspace through everything in insert mode"
set autoindent                    " match indentation of previous line
set pastetoggle=<F2>

set incsearch                     " Find as you type search
set hlsearch                      " Highlight search terms
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set foldmethod=indent             "fold based on indent
set foldnestmax=3                 "deepest fold is 3 levels
set nofoldenable                  "dont fold by default

set hidden                        " Handle multiple buffers better.
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

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=/tmp                " Keep swap files in one location
set timeoutlen=500

set laststatus=2                  " Show the status line all the time
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set t_Co=256                      " Set terminal to 256 colors
" Colorscheme
set background=dark
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

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" zencoding settings
let g:user_zen_expandabbr_key = '<c-e>'
let g:user_zen_next_key = '<c-n>'
let NERDTreeIgnore=['\.pyc$', '\~$'] 

if has('mouse')
  set mouse=a
endif

" copy current line, paste after this line, replace all characters with '='
nnoremap <leader>1 yypVr=

" Control-tab for auto-complete
inoremap <C-TAB> <C-X><C-O>

" 'space' runs macro 'q'
:noremap <Space> @q

let delimitMate_expand_cr=1

" *********************************************
" *        Local Vimrc Customization          *
" *********************************************
if filereadable(expand('~/.vimrc.local'))
  so ~/.vimrc.local
endif
