" Vim color file
" Converted from Textmate theme Sunburst copy using Coloration v0.2.4 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Sunburst copy"

hi Cursor  guifg=NONE guibg=#dcba2c gui=NONE
"hi Visual  guifg=NONE guibg=#3151f1 gui=NONE
hi Visual  guifg=#4289a7  guibg=#b4e4fd     gui=none 
hi CursorLine  guifg=NONE guibg=#1d2653 gui=NONE
hi CursorColumn  guifg=NONE guibg=#1d2653 gui=NONE
"hi LineNr  guifg=#7e7e7e guibg=#171717 gui=NONE
hi lineNr guifg=#888888 guibg=#DEDEDE
hi VertSplit  guifg=#3e3e3e guibg=#3e3e3e gui=NONE
hi MatchParen  guifg=#e18862 guibg=NONE gui=NONE
"hi StatusLine  guifg=#e5e5e5 guibg=#3e3e3e gui=bold
"hi StatusLineNC  guifg=#e5e5e5 guibg=#3e3e3e gui=NONE
hi StatusLine     guifg=#4d6c60  guibg=#a7cdbc
hi StatusLineNC   guifg=#263831  guibg=#4d6c60  
hi Pmenu  guifg=#89bdff guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#3151f1 gui=NONE
hi IncSearch  guifg=NONE guibg=#264163 gui=NONE
hi Search  guifg=NONE guibg=#264163 gui=NONE
hi Directory  guifg=#40a8ff guibg=NONE gui=NONE
hi Folded  guifg=#adadad guibg=#171717 gui=NONE

hi Normal  guifg=#e5e5e5 guibg=#171717 gui=NONE
hi Boolean  guifg=#40a8ff guibg=NONE gui=NONE
hi Character  guifg=#40a8ff guibg=NONE gui=NONE
"hi Comment  guifg=#adadad guibg=NONE gui=italic
hi Comment  guifg=#828282 guibg=NONE gui=italic
hi Conditional  guifg=#e18862 guibg=NONE gui=NONE
hi Constant  guifg=#40a8ff guibg=NONE gui=NONE
hi Define  guifg=#e18862 guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#40a8ff guibg=NONE gui=NONE
hi Function  guifg=#89bdff guibg=NONE gui=NONE
hi Identifier  guifg=#639b3e guibg=NONE gui=NONE
hi Keyword  guifg=#e18862 guibg=NONE gui=NONE
hi Label  guifg=#5aa03b guibg=NONE gui=NONE
hi NonText  guifg=#40464b guibg=#222222  gui=NONE
hi Number  guifg=#40a8ff guibg=NONE gui=NONE
hi Operator  guifg=#e18862 guibg=NONE gui=NONE
hi PreProc  guifg=#e18862 guibg=NONE gui=NONE
hi Special  guifg=#e5e5e5 guibg=NONE gui=NONE
hi SpecialKey  guifg=#40464b guibg=#1d2653 gui=NONE
hi Statement  guifg=#e18862 guibg=NONE gui=NONE
hi StorageClass  guifg=#639b3e guibg=NONE gui=NONE
hi String  guifg=#5aa03b guibg=NONE gui=NONE
hi Tag  guifg=#89bdff guibg=NONE gui=NONE
hi Title  guifg=#e5e5e5 guibg=NONE gui=bold
hi Todo  guifg=#adadad guibg=NONE gui=inverse,bold,italic
hi Type  guifg=#89bdff guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#e18862 guibg=NONE gui=NONE
hi rubyFunction  guifg=#89bdff guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#40a8ff guibg=NONE gui=NONE
hi rubyConstant  guifg=#9a849d guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#5aa03b guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=#4596fe guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#4596fe guibg=NONE gui=NONE
hi rubyInclude  guifg=#e18862 guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#4596fe guibg=NONE gui=NONE
hi rubyRegexp  guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape  guifg=#40a8ff guibg=NONE gui=NONE
hi rubyControl  guifg=#e18862 guibg=NONE gui=NONE
hi rubyClassVariable  guifg=#4596fe guibg=NONE gui=NONE
hi rubyOperator  guifg=#e18862 guibg=NONE gui=NONE
hi rubyException  guifg=#e18862 guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=#4596fe guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#9a849d guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=#dad085 guibg=NONE gui=NONE
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#adadad guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#dad085 guibg=NONE gui=NONE
hi htmlTag  guifg=#89bdff guibg=NONE gui=NONE
hi htmlEndTag  guifg=#89bdff guibg=NONE gui=NONE
hi htmlTagName  guifg=#89bdff guibg=NONE gui=NONE
hi htmlArg  guifg=#89bdff guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#40a8ff guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#639b3e guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#dad085 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#89bdff guibg=NONE gui=NONE
hi yamlAnchor  guifg=#4596fe guibg=NONE gui=NONE
hi yamlAlias  guifg=#4596fe guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#5aa03b guibg=NONE gui=NONE
hi cssURL  guifg=#4596fe guibg=NONE gui=NONE
hi cssFunctionName  guifg=#dad085 guibg=NONE gui=NONE
hi cssColor  guifg=#40a8ff guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#89bdff guibg=NONE gui=NONE
hi cssClassName  guifg=#89bdff guibg=NONE gui=NONE
hi cssValueLength  guifg=#40a8ff guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#cf6a4c guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE

