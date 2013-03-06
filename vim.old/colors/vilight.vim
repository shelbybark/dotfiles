" rob.robb.ns
" Last Change: 25 june 2010

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="vilight"

hi Normal         guifg=#dedee1           guibg=#141414
hi Cursor                                 guibg=#ffba0a
"hi CursorLine	            			  guibg=#282828
hi CursorLine	            			  guibg=#1e1e1e
hi Directory      guifg=#8F9D6A           guibg=#141414
"hi Directory      guifg=#ff0000 guibg=#00ff00
"hi treeDir        guifg=#ff0000 guibg=#00ff00

"hi VertSplit      guifg=#d5dcee           guibg=#d5dcee
hi VertSplit      guifg=#272727           guibg=#272727
hi Folded         guifg=#888888           guibg=#282828
hi FoldColumn	  guifg=#cf6a4c           guibg=#141414     gui=italic
hi vimFold		  guifg=#f8f8f8			  guibg=#282828     gui=italic
hi IncSearch      guifg=#4f94cd           guibg=#f8f8f8
hi LineNr         guifg=#665f57           guibg=#282828
"hi LineNr         guifg=#665f57           guibg=#d5dcee
hi ModeMsg        guifg=#f9ee98           guibg=#141414
hi MoreMsg        guifg=#f9ee98           guibg=#141414
hi NonText        guifg=#2e2e2e           guibg=#141414
hi SpecialKey     guifg=#2e2e2e           guibg=#141414
"hi Search         guifg=#f8f8f8           guibg=#4f94cd     gui=underline
hi Search         guifg=#f8f8f8           guibg=#a7611e     gui=underline
hi StatusLine     guifg=#2d5979           guibg=#add6ec
hi StatusLineNC   guifg=#0e2231           guibg=#1e3d55
hi Visual         guifg=#4289a7           guibg=#b4e4fd     gui=none 
hi WildMenu       guifg=#9b70f3           guibg=#0e2231
hi MatchParen	  guifg=#f8f8f8		      guibg=#4f94cd
"hi ErrorMsg		  guifg=#cf6a4c           guibg=NONE
hi ErrorMsg		  guifg=#fce1d8           guibg=#cd3031
"hi WarningMsg	  guifg=#cf6a4c			  guibg=NONE
hi WarningMsg	  guifg=#433a06			  guibg=#f1d331
hi Title		  guifg=#cf6a4c			  guibg=#141414
hi ColorColumn    guifg=#9c7777           guibg=#120b0b

"Syntax hilight groups

hi Comment        guifg=#665f57           gui=italic
hi Constant       guifg=#7587a6           gui=bold
hi Exception      guifg=#cf6a4c
hi String         guifg=#8f9d6a
hi Variable       guifg=#7587a6           gui=bold
hi Number         guifg=#cf6a4c
hi Define         guifg=#7587a6
hi Boolean        guifg=#CF6A4C
hi Float          guifg=#cf6a4c
hi Identifier     guifg=#7587a6           gui=bold
hi Statement      guifg=#cda869
hi Keyword        guifg=#cda869           gui=bold
hi PreProc        guifg=#7587a6
hi Type           guifg=#9b859d		      gui=bold		
hi Typedef        guifg=#cda869
hi Special        guifg=#cda869
hi SpecialChar    guifg=#7587a6
hi SpecialComment guifg=#4f94cd
hi Ignore         guifg=#888888
hi Error          guifg=#cf6a4c          guibg=NONE         gui=underline
hi Todo           guifg=#141414			 guibg=#f9ee98
hi Pmenu          guifg=#8693a5          guibg=#0e2231
hi PmenuSel       guifg=#cda869          guibg=#0e2231
hi PmenuSbar      guibg=#665f57
hi PmenuThumb     guifg=#a6a6a6

"diff

hi DiffAdd        guifg=#8f9d6a          guibg=#282828
hi DiffChange     guifg=#cda869          guibg=#282828
hi DiffText       guifg=#f8f8f8          guibg=#282828
hi DiffDelete     guifg=#cf6a4c          guibg=#282828


" " CSS specific highlight
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

