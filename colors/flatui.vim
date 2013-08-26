
" flatui.vim - Vim color scheme (http://flatuicolors.com)
" ----------------------------------------------------------
" Author:	John Louis Del Rosario (http://john2x.com/)
" Version:	0.1
" License:	Creative Commons Attribution-NonCommercial
" 			3.0 Unported License       (see README.md)
" ----------------------------------------------------------

" Setup ----------------------------------------------------{{{
" Reset syntax highlighting
hi clear
if exists("syntax_on")
	syntax reset
endif

" Declare theme name
let g:colors_name="flatui"

"}}}
" The Colors -----------------------------------------------{{{
" Define reusable colors
let s:midnightBlue=           { "gui": "#000000", "cterm": "237"  }
let s:clouds=           { "gui": "#FFFFFF", "cterm": "255" }
let s:silver=     { "gui": "#EEEEEE", "cterm": "7" }
let s:wetAsphalt=     { "gui": "#111111", "cterm": "239" }
let s:concrete=  { "gui": "#777777", "cterm": "247" }
let s:asbestos= { "gui": "#999999", "cterm": "102" }

let s:turquoise=        { "gui": "#63001C", "cterm": "37"  }
let s:greenSea=  { "gui": "#FF0055", "cterm": "36" }
let s:emerald= { "gui": "#D65E76", "cterm": "41" }
let s:nephritis=       { "gui": "#FFAFAF", "cterm": "35" }

let s:peterRiver=        { "gui": "#005F87", "cterm": "68"  }
let s:belizeHole=  { "gui": "#538192", "cterm": "31"  }
let s:amethyst= { "gui": "#9FD3E6", "cterm": "133" }
let s:wisteria=       { "gui": "#CBE4EE", "cterm": "97" }

let s:carrot=       { "gui": "#5F5F00", "cterm": "172"  }
let s:pumpkin= { "gui": "#739200", "cterm": "166"  }
let s:sunFlower={ "gui": "#B1D631", "cterm": "220" }
let s:orange=      { "gui": "#BBFFAA", "cterm": "214" }

let s:alizarin=         { "gui": "#503D15", "cterm": "167"  }
let s:pomegranate=        { "gui": "#ECE1C8", "cterm": "130" }

" Assign to semantic categories based on background color
if &background=="dark"
	" Dark theme
	let s:bg=s:black
	let s:norm=s:almostWhite
	let s:comment=s:middleDarkGrey
	let s:dimmed=s:middleLightGrey
	let s:subtle=s:darkGrey
	let s:faint=s:almostBlack
	let s:accent1=s:middleLightBlue
	let s:accent2=s:middleLightGreen
	let s:accent3=s:lightGreen
	let s:accent4=s:lightTan
	let s:normRed=s:middleLightPink
	let s:normGreen=s:middleLightGreen
	let s:normBlue=s:middleLightBlue
	let s:faintRed=s:darkPink
	let s:faintGreen=s:darkGreen
	let s:faintBlue=s:darkBlue
else
	" Light theme
	let s:bg=s:clouds
	let s:norm=s:midnightBlue
	let s:comment=s:silver
	let s:dimmed=s:silver
	let s:subtle=s:silver
	let s:faint=s:silver
	let s:accent1=s:turquoise
	let s:accent2=s:emerald
	let s:accent3=s:wetAsphalt
	let s:accent4=s:carrot
	let s:normRed=s:pomegranate
	let s:normGreen=s:nephritis
	let s:normBlue=s:belizeHole
	let s:faintRed=s:alizarin
	let s:faintGreen=s:emerald
	let s:faintBlue=s:peterRiver
endif

"}}}
" Utilility Function ---------------------------------------{{{
function! s:h(group, style)
	execute "highlight" a:group
		\ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
		\ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
		\ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
		\ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
		\ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
		\ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
		\ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

"}}}
" Highlights - Vim >= 7 ------------------------------------{{{
if version >= 700
	call s:h("CursorLine",  { "bg": s:faint })
	call s:h("MatchParen",  { "fg": s:accent1, "bg": s:faint, "gui": "bold" })
	call s:h("Pmenu",       { "bg": s:faint })
	call s:h("PmenuThumb",  { "bg": s:norm })
	call s:h("PmenuSBar",   { "bg": s:subtle })
	call s:h("PmenuSel",    { "bg": s:faintBlue })
	call s:h("ColorColumn", { "bg": s:faintRed })
	call s:h("SpellBad",    { "sp": s:normRed, "gui": "undercurl" })
	call s:h("SpellCap",    { "sp": s:accent1, "gui": "undercurl" })
	call s:h("SpellRare",   { "sp": s:normGreen, "gui": "undercurl" })
	call s:h("SpellLocal",  { "sp": s:accent4, "gui": "undercurl" })
	hi! link CursorColumn	CursorLine

	" Use background for cterm Spell*, which does not support undercurl
	execute "hi! SpellBad   ctermbg=" s:faintRed.cterm
	execute "hi! SpellCap   ctermbg=" s:faintBlue.cterm
	execute "hi! SpellRare  ctermbg=" s:faintGreen.cterm
	execute "hi! SpellLocal ctermbg=" s:faint.cterm
endif

"}}}
" Highlights - UI ------------------------------------------{{{
call s:h("Normal",       { "fg": s:norm, "bg": s:bg })
call s:h("NonText",      { "fg": s:subtle })
call s:h("Cursor",       { "fg": s:bg, "bg": s:accent3 })
call s:h("Visual",       { "bg": s:faintBlue })
call s:h("IncSearch",    { "bg": s:faintBlue })
call s:h("Search",       { "bg": s:faintGreen })
call s:h("StatusLine",   { "fg": s:norm, "bg": s:faint, "gui": "bold", "cterm": "bold" })
call s:h("StatusLineNC", { "fg": s:dimmed, "bg": s:faint })
call s:h("SignColumn",   { "fg": s:norm })
call s:h("VertSplit",    { "fg": s:subtle, "bg": s:faint })
call s:h("TabLine",      { "fg": s:dimmed, "bg": s:faint })
call s:h("TabLineSel",   { "gui": "bold", "cterm": "bold" })
call s:h("Folded",       { "fg": s:comment, "bg": s:faint })
call s:h("Directory",    { "fg": s:accent1 })
call s:h("Title",        { "fg": s:accent4, "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",     { "bg": s:faintRed })
call s:h("DiffAdd",      { "bg": s:faintGreen })
call s:h("DiffChange",   { "bg": s:faintRed })
call s:h("DiffDelete",   { "fg": s:normRed, "bg": s:faintRed })
call s:h("DiffText",     { "bg": s:faintRed, "gui": "bold", "cterm": "bold" })
call s:h("User1",        { "fg": s:bg, "bg": s:normGreen })
call s:h("User2",        { "fg": s:bg, "bg": s:normRed })
call s:h("User3",        { "fg": s:bg, "bg": s:normBlue })
hi! link WildMenu	IncSearch
hi! link FoldColumn	SignColumn
hi! link WarningMsg	ErrorMsg
hi! link MoreMsg	Title
hi! link Question	MoreMsg
hi! link ModeMsg	MoreMsg
hi! link TabLineFill	StatusLineNC
hi! link LineNr		NonText
hi! link SpecialKey	NonText

"}}}
" Highlights - Generic Syntax ------------------------------{{{
call s:h("Delimiter",  { "fg": s:dimmed })
call s:h("Comment",    { "fg": s:comment, "gui": "italic" })
call s:h("Underlined", { "fg": s:accent1, "gui": "underline", "cterm": "underline" })
call s:h("Type",       { "fg": s:accent3 })
call s:h("String",     { "fg": s:accent2 })
call s:h("Keyword",    { "fg": s:accent2, "gui": "bold", "cterm": "bold" })
call s:h("Todo",       { "fg": s:normRed, "gui": "bold", "cterm": "bold" })
call s:h("Function",   { "gui": "bold", "cterm": "bold" })
hi! link Identifier	Function
hi! link Statement	Type
hi! link Constant	Directory
hi! link Number		Constant
hi! link Special	Constant
hi! link PreProc	Constant
hi! link Error		ErrorMsg

"}}}
" Highlights - HTML ----------------------------------------{{{
hi! link htmlLink	Underlined
hi! link htmlTag	Type
hi! link htmlEndTag	htmlTag

"}}}
" Highlights - CSS -----------------------------------------{{{
hi! link cssBraces	Delimiter
hi! link cssSelectorOp	cssBraces
hi! link cssClassName	Normal

"}}}
" Highlights - Markdown ------------------------------------{{{
hi! link mkdListItem	mkdDelimiter

"}}}
" Highlights - Shell ---------------------------------------{{{
hi! link shOperator	Delimiter
hi! link shCaseBar	Delimiter

"}}}
" Highlights - JavaScript ----------------------------------{{{
hi! link javaScriptValue	Constant
hi! link javaScriptNull	Constant
hi! link javaScriptBraces	Normal

"}}}
" Highlights - Help ----------------------------------------{{{
hi! link helpExample	String
hi! link helpHeadline	Title
hi! link helpSectionDelim	Comment
hi! link helpHyperTextEntry	Statement
hi! link helpHyperTextJump	Underlined
hi! link helpURL	Underlined

"}}}

" vim: fdm=marker
