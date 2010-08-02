" Vim color file
" Name: taiga.vim
" Author: R. Wharton <ry AT misprint DOT org>
" Version: 1.0
" Url: http://github.com/ryland/vim_colors
"
" gui only.

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "taiga"

if has("gui_running")
  if version >= 700
    highlight CursorLine guibg=#22252a
    highlight CursorColumn guibg=#eaeaea
    highlight MatchParen guifg=white guibg=#587e6e gui=bold
    highlight IncSearch guibg=#46481A

    highlight Pmenu guifg=#eeeeee guibg=#506070
    highlight PmenuSel guibg=#8090a0 guifg=white
  endif

  highlight Cursor    guifg=#111111   guibg=#b0b4b8
  highlight lCursor   guifg=black   guibg=white
  highlight Normal    guifg=#e0e0e0   guibg=#111419

  highlight LineNr    guifg=#777777 guibg=#22242c
  highlight StatusLine guifg=white guibg=#607080 gui=bold
  highlight StatusLineNC guifg=#304050 guibg=#8090a0
  highlight VertSplit guifg=#708090 guibg=#607080
  highlight Folded    guibg=#304050 guifg=#c0d0e0

  highlight NonText   guifg=#666666 guibg=#111212
  highlight Comment   guifg=#777977 guibg=#202129 gui=italic
  highlight Keyword   guifg=#a0b0c0 guibg=#141414
  highlight Constant  guifg=#5c7a62 gui=underline
  highlight String    guifg=#e3ac4f 
  highlight Character guifg=#dd90a1 
  highlight Number    guifg=#3399cc
  highlight Float     guifg=#70a040
  highlight Boolean   guifg=#b5b4a3

  highlight Statement guifg=#a1ab94
  highlight Include   guifg=#acc9c0 
  highlight Type       guifg=#628988 
  highlight Structure  guifg=#786480 
  highlight Function   guifg=#6b8c96 guibg=#000e1b gui=underline
  highlight Operator   guifg=#d5606c
  highlight Identifier guifg=#999a9c
  highlight Repeat      guifg=#6a9a8a gui=bold
  highlight Conditional guifg=#ab610a
  highlight PreProc    guifg=#1060a0
  highlight Define     guifg=#cd494a 
  highlight Macro      guifg=#c67dac
  highlight Error      guifg=red guibg=#110000 gui=bold,underline
  highlight Todo       guifg=#bb3333 guibg=NONE gui=underline
  highlight Special    guifg=#587e6e guibg=#111210
  highlight Underlined guifg=#00aa65 gui=underline
  highlight Delimiter  guifg=#b09f92
  highlight Title      guifg=#9a527e
  highlight SpecialKey guifg=#aa3333 guibg=#1c0002


  " Ruby
  highlight rubyClass guifg=#63968d
  highlight rubyBlockParameter guifg=#97b693
  highlight rubyGlobalVariable guifg=#cc3333 guibg=#000000
  highlight rubySymbol guifg=#c26741
  highlight rubyInstanceVariable guifg=#587e6e guibg=#111210 gui=underline
  highlight rubyRegexp guifg=#cc4d37
  highlight rubyRegexpDelimiter guifg=#984539
  highlight rubyRegexpSpecial guifg=#aa2b15
  highlight link rubyConstant Constant
  highlight link rubyInterpolationDelimiter Delimiter
  highlight link rubyGlobalVariable rubyInstanceVariable
  highlight link erubyDelimiter Delimiter

  " Javascript
  highlight link javaScriptOperator Operator
  highlight link javaScriptValue Number
  highlight link javaScriptRegexpString rubyRegexp
  highlight link javaScriptBraces Structure

  " HTML
  highlight htmlTag guifg=#6b8c96 guibg=#000e1b
  highlight htmlEndTag guifg=#6d6c71
  highlight htmlTagName guifg=#6b8c96
  highlight htmlArg guifg=#b6a785

  " CSS
  highlight link cssCommonAttr Constant
  highlight link cssTagName htmlTagName
  highlight link cssIdentifier Special
  highlight link cssPseudoClassId htmlArg
  highlight link cssBraces htmlTag
  highlight link cssProperty rubySymbol
endif
