" Vim color file
" Maintainer: Roman Gonzalez <romanandnreg at gmail dot com>
" Last Change: 2009 Aug 11
" Version: 0.0.1
" Screenshot: http://img.skitch.com/20090811-ti4b27qbftjybmau32ruygjjwx.jpg
" URL: http://blog.romanandreg.com
 
" For now this will only work on gvim
 
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
 
let g:colors_name = "sunburst"
 
if has("gui_running")
 
  highlight lineNr guifg=#888888 guibg=#DEDEDE
  highlight VertSplit guifg=#DEDEDE guibg=#888888
  highlight IncSearch guibg=#16181A
  highlight Cursor guibg=#ffba0a
	highlight CursorLine guibg=#383838
	highlight CursorColumn		guibg=#2b2b2b
  highlight Search guibg=#16181A guifg=NONE
  highlight MatchParen guibg=#DDDDDD guifg=#000000
 
" Some defaults for all languages
  highlight Normal guifg=White guibg=#242424
  highlight NonText 		guifg=#535353		gui=none
  highlight SpecialKey	guifg=#535353		gui=none
  highlight Visual   guifg=#4289a7 guibg=#b4e4fd gui=none

	
  hi Folded                    guifg=#F6F3E8 guibg=#444444		gui=NONE
  hi Directory                 guifg=#A5C261 gui=NONE 
	
  highlight Keyword guifg=#f0976f		gui=none
  highlight Include   guifg=#f0976f		gui=none
  highlight Define guifg=#9add50		gui=none 
  highlight Statement guifg=#e19677	gui=none
  highlight Macro		guifg=#89BDFF		gui=none
  highlight Function guifg=#89BDFF gui=none
  highlight PreProc guifg=#89BDFF gui=none
  highlight Identifier guifg=#89BDFF gui=none
  highlight Comment guifg=#AEAEAE gui=none
  highlight SpecialComment guifg=#AEAEAE 
  highlight Type guifg=#a692a9 gui=NONE
  highlight Constant guifg=#3387CC
  highlight String guifg=#65B042
  highlight Title guifg=#FFFFFF
  highlight Todo guifg=#FFFFFF gui=underline

" HTML
  highlight htmlTag guifg=#80BDF7
  highlight htmlEndTag guifg=#80BDF7 
  highlight htmlTagName guifg=#80BDF7
  highlight htmlArg guifg=#80BDF7 

" Django Templates
  highlight djangoTagBlock guifg=#89bdff
	highlight djangoStatement guifg=#e18862
	hi djangoArgument guifg=#5aa034
 
" Ruby specific highlight
  highlight rubyClass guifg=#e19677
  highlight rubyInterpolationDelimiter guifg=#DAEFA0 
  highlight rubySymbol guifg=#3387CC 
  highlight rubyConstant guifg=#3387CC 
  highlight rubyStringDelimiter guifg=#65B042 
  highlight rubyBlockParameter guifg=#3387CC 
  highlight rubyInstanceVariable guifg=#3387CC 
  highlight rubyInclude guifg=#e19677
  highlight rubyGlobalVariable guifg=#3387CC 
 
" Rails specific highlight
  highlight rubyRailsMethod guifg=#DAD085 
  highlight rubyRailsUserClass guifg=#89BDFF gui=underline
  highlight railsConditionsSpecial guifg=#DAEFA0 

 
" Rails: erb
  highlight erubyDelimiter guifg=#FFFFFF 
  highlight erubyRailsRenderMethod guifg=#DAD085 
  highlight erubyRailsHelperMethod guifg=#DAD085
  highlight javascriptRailsFunction guifg=#e19677
" Rails: haml
  highlight hamlTag guifg=#80BDF7 
  highlight hamlClassChar guifg=#DAEFA0 
  highlight hamlClass guifg=#DAEFA0 
  highlight hamlIdChar guifg=#DAD085 
  highlight hamlId guifg=#DAD085 
  highlight hamlAttributesDelimiter guifg=#FFFFFF 
  highlight hamlRubyOutputChar guifg=#FFFFFF 
  highlight hamlObjectDelimiter guifg=#FFFFFF 
 
" Javascript specific highlight
  highlight javaScript guifg=#FFFFFF 
  highlight javaScriptIdentifier guifg=#3387CC 
  highlight javaScriptCommentTodo guifg=#AEAEAE guibg=NONE
  highlight javaScriptBraces guifg=#FFFFFF 
  highlight javaScriptFunction guifg=#99C843 
  highlight javaScriptType guifg=#62a3fb
  highlight javaScriptMember guifg=#94859D 
  highlight javaScriptGlobal guifg=#94859D 
  highlight javaScriptRegexpString guifg=#E1C062 

  highlight javaScriptStringS		guifg=#6ead4f

	"		HiLink javaScriptComment		Comment
	"		HiLink javaScriptLineComment		Comment
	"		HiLink javaScriptCommentTodo		Todo
	hi link javaScriptSpecial		Special
	"		HiLink javaScriptStringS		String
	"		HiLink javaScriptStringD		String
	hi link		javaScriptCharacter		Character
	hi link javaScriptSpecialCharacter	javaScriptSpecial
	"		HiLink javaScriptNumber		javaScriptValue
	hi link javaScriptConditional		Conditional
	hi link javaScriptRepeat		Repeat
	hi link javaScriptBranch		Conditional
	hi link javaScriptOperator		Operator
	hi link javaScriptType			Type
	hi link javaScriptStatement		Statement
	"		HiLink javaScriptFunction		Function
	"		HiLink javaScriptBraces		Function
	"		HiLink javaScriptError		Error
	"		HiLink javaScrParenError		javaScriptError
	hi link javaScriptNull			Keyword
	hi link javaScriptBoolean		Boolean
	hi link javaScriptRegexpString		String

	hi link javaScriptIdentifier		Identifier
	hi link javaScriptLabel		Label
	hi link javaScriptException		Exception
	hi link javaScriptMessage		Keyword
	hi link javaScriptGlobal		Keyword
	hi link javaScriptMember		Keyword
	hi link javaScriptDeprecated		Exception 
	hi link javaScriptReserved		Keyword
	"		HiLink javaScriptDebug		Debug
	hi link javaScriptConstant		Label
	

" CSS specific highlight
	hi link cssBraces			Normal
	hi cssTagName		guifg=#d1b37c	
	hi StorageClass		guifg=#cab987
	hi cssClassName	guifg=#a47f52	
	hi cssIdentifier		guifg=#9aa4b5
	hi cssColor			guifg=#f8f0a8
	hi cssFontProp		guifg=#cab987
	hi cssValueInteger		guifg=#dc8851
	hi cssValueNumber		guifg=#dc8851
	hi cssValueLength		guifg=#dc8851
	hi cssPseudoClassId guifg=#cac48d
	hi cssFontAttr		guifg=#dc8851
	hi cssTextAttr		guifg=#f8f0a8
	hi cssRenderAttr	guifg=#f8f0a8
	hi cssBoxAttr	guifg=#f8f0a8


	hi cssColorAttr		guifg=#f8f0a8
	hi cssTextAttr guifg=#f8f0a8
	hi cssRenderAttr guifg=#f8f0a8
	hi cssAuralAttr guifg=#f8f0a8
	hi cssGeneratedContentAttr guifg=#f8f0a8
	hi cssTableAttr guifg=#f8f0a8
	hi cssUIAttr guifg=#f8f0a8
	hi cssPagingAttr guifg=#f8f0a8
	hi cssCommonAttr guifg=#f8f0a8

"		HiLink cssComment Comment
"		HiLink cssTagName Statement
"		HiLink cssSelectorOp Special
"		HiLink cssSelectorOp2 Special
"		HiLink cssFontProp StorageClass
"		HiLink cssColorProp StorageClass
"		HiLink cssTextProp StorageClass
"		HiLink cssBoxProp StorageClass
"		HiLink cssRenderProp StorageClass
"		HiLink cssAuralProp StorageClass
"		HiLink cssRenderProp StorageClass
"		HiLink cssGeneratedContentProp StorageClass
"		HiLink cssPagingProp StorageClass
"		HiLink cssTableProp StorageClass
"		HiLink cssUIProp StorageClass
"		HiLink cssFontAttr Type
"		HiLink cssColorAttr Type
"		HiLink cssTextAttr Type
"		HiLink cssBoxAttr Type
"		HiLink cssRenderAttr Type
"		HiLink cssAuralAttr Type
"		HiLink cssGeneratedContentAttr Type
"		HiLink cssPagingAttr Type
"		HiLink cssTableAttr Type
"		HiLink cssUIAttr Type
"		HiLink cssCommonAttr Type
"		HiLink cssPseudoClassId PreProc
"		HiLink cssPseudoClassLang Constant
"		HiLink cssValueLength Number
"		HiLink cssValueInteger Number
"		HiLink cssValueNumber Number
"		HiLink cssValueAngle Number
"		HiLink cssValueTime Number
"		HiLink cssValueFrequency Number
"		HiLink cssFunction Constant
"		HiLink cssURL String
"		HiLink cssFunctionName Function
"		HiLink cssColor Constant
"		HiLink cssIdentifier Function
"		HiLink cssInclude Include
"		HiLink cssImportant Special
"		HiLink cssBraces Function
"		HiLink cssBraceError Error
"		HiLink cssError Error
"		HiLink cssInclude Include
"		HiLink cssUnicodeEscape Special
"		HiLink cssStringQQ String
"		HiLink cssStringQ String
"		HiLink cssMedia Special
"		HiLink cssMediaType Special
"		HiLink cssMediaComma Normal
"		HiLink cssFontDescriptor Special
"		HiLink cssFontDescriptorFunction Constant
"		HiLink cssFontDescriptorProp StorageClass
"		HiLink cssFontDescriptorAttr Type
"		HiLink cssUnicodeRange Constant
"		HiLink cssClassName Function
	

endif
