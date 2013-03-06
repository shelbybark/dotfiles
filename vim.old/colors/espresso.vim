" Vim color file
" Converted from Textmate theme Espresso tutti colori using Coloration v0.2.5 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Espresso tutti colori"

hi Cursor  guifg=NONE guibg=#000000 gui=NONE
hi Visual  guifg=NONE guibg=#c9d0d9 gui=NONE
hi CursorLine  guifg=NONE guibg=#eaeaea gui=NONE
hi CursorColumn  guifg=NONE guibg=#eaeaea gui=NONE
hi LineNr  guifg=#808080 guibg=#eeeeee gui=NONE
hi VertSplit  guifg=#cfcfcf guibg=#cfcfcf gui=NONE
hi MatchParen  guifg=#6700b9 guibg=NONE gui=NONE
"hi StatusLine  guifg=#000000 guibg=#cfcfcf gui=bold
"hi StatusLineNC  guifg=#000000 guibg=#cfcfcf gui=NONE
hi StatusLine     guifg=#2d5979           guibg=#add6ec
hi StatusLineNC   guifg=#0e2231           guibg=#1e3d55
hi Pmenu  guifg=#4e279a guibg=NONE gui=bold
hi PmenuSel  guifg=NONE guibg=#c9d0d9 gui=NONE
hi IncSearch  guifg=NONE guibg=#d3d9c4 gui=NONE
hi Search  guifg=NONE guibg=#d3d9c4 gui=NONE
hi Directory  guifg=NONE guibg=#e8ffd5 gui=bold
hi Folded  guifg=#7f7f7f guibg=#ffffff gui=NONE

hi Normal  guifg=#000000 guibg=#ffffff gui=NONE
hi Boolean  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi Character  guifg=#bc670f guibg=#fffdf7 gui=NONE
hi Comment  guifg=#7f7f7f guibg=NONE gui=NONE
hi Conditional  guifg=#6700b9 guibg=NONE gui=NONE
hi Constant  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi Define  guifg=#6700b9 guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi Function  guifg=#4e279a guibg=NONE gui=bold
hi Identifier  guifg=#6700b9 guibg=NONE gui=NONE
hi Keyword  guifg=#6700b9 guibg=NONE gui=NONE
hi Label  guifg=#bc670f guibg=#fffdf7 gui=NONE
hi NonText  guifg=#aaaaaa guibg=#eaeaea gui=NONE
"hi Number  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi Number  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi Operator  guifg=#626fc9 guibg=NONE gui=NONE
hi PreProc  guifg=#6700b9 guibg=NONE gui=NONE
hi Special  guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey  guifg=#aaaaaa guibg=#eaeaea gui=NONE
hi Statement  guifg=#6700b9 guibg=NONE gui=NONE
hi StorageClass  guifg=#6700b9 guibg=NONE gui=NONE
hi String  guifg=#bc670f guibg=#fffdf7 gui=NONE
hi Tag  guifg=#2f6f9f guibg=#f4faff gui=NONE
hi Title  guifg=#000000 guibg=NONE gui=bold
hi Todo  guifg=#7f7f7f guibg=NONE gui=inverse,bold
hi Type  guifg=#3a1d72 guibg=NONE gui=bold
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#6700b9 guibg=NONE gui=NONE
hi rubyFunction  guifg=#4e279a guibg=NONE gui=bold
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=NONE guibg=#e8ffd5 gui=bold
hi rubyConstant  guifg=#3a1d72 guibg=NONE gui=bold
hi rubyStringDelimiter  guifg=#bc670f guibg=#fffdf7 gui=NONE
hi rubyBlockParameter  guifg=#7b8c4d guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi rubyInclude  guifg=#6700b9 guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#7b8c4d guibg=NONE gui=NONE
hi rubyRegexp  guifg=#699d36 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#699d36 guibg=NONE gui=NONE
hi rubyEscape  guifg=NONE guibg=#fcedbd gui=bold
hi rubyControl  guifg=#6700b9 guibg=NONE gui=NONE
hi rubyClassVariable  guifg=#7b8c4d guibg=NONE gui=NONE
hi rubyOperator  guifg=#626fc9 guibg=NONE gui=NONE
hi rubyException  guifg=#6700b9 guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi rubyRailsUserClass  guifg=#3a1d72 guibg=NONE gui=bold
hi rubyRailsARAssociationMethod  guifg=#4e279a guibg=NONE gui=bold
hi rubyRailsARMethod  guifg=#4e279a guibg=NONE gui=bold
hi rubyRailsRenderMethod  guifg=#4e279a guibg=NONE gui=bold
hi rubyRailsMethod  guifg=#4e279a guibg=NONE gui=bold
hi erubyDelimiter  guifg=#7f7f7f guibg=NONE gui=NONE
hi erubyComment  guifg=#7f7f7f guibg=NONE gui=NONE
hi erubyRailsMethod  guifg=#4e279a guibg=NONE gui=bold
hi htmlTag  guifg=#4e279a guibg=NONE gui=bold
hi htmlEndTag  guifg=#4e279a guibg=NONE gui=bold
hi htmlTagName  guifg=#4e279a guibg=NONE gui=bold
hi htmlArg  guifg=#4e279a guibg=NONE gui=bold
hi htmlSpecialChar  guifg=NONE guibg=#fcedbc gui=NONE
hi javaScriptFunction  guifg=#6700b9 guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#4e279a guibg=NONE gui=bold
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#2f6f9f guibg=#f4faff gui=NONE
hi yamlAnchor  guifg=#7b8c4d guibg=NONE gui=NONE
hi yamlAlias  guifg=#7b8c4d guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#bc670f guibg=#fffdf7 gui=NONE
hi cssURL  guifg=#7b8c4d guibg=NONE gui=NONE
hi cssFunctionName  guifg=#4e279a guibg=NONE gui=bold
hi cssColor  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi cssPseudoClassId  guifg=#4f9fcf guibg=NONE gui=NONE
hi cssClassName  guifg=#4f9fcf guibg=NONE gui=NONE
hi cssValueLength  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi cssCommonAttr  guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi cssBraces  guifg=#7f7f7f guibg=NONE gui=NONE
