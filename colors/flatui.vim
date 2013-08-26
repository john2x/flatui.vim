" flatui.vim - Vim color scheme (http://flatuicolors.com)
" ----------------------------------------------------------
" Author:	John Louis Del Rosario (http://john2x.com/)
" Version:	0.2
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
let s:midnightBlue=   { "gui": "#2c3e50", "cterm": "237"  }
let s:clouds=         { "gui": "#ecf0f1", "cterm": "255" }
let s:silver=         { "gui": "#bdc3c7", "cterm": "7" }
let s:wetAsphalt=     { "gui": "#34495e", "cterm": "239" }
let s:concrete=       { "gui": "#95a5a6", "cterm": "247" }
let s:asbestos=       { "gui": "#7f8c8d", "cterm": "102" }

let s:turquoise=      { "gui": "#1abc9c", "cterm": "37"  }
let s:greenSea=       { "gui": "#16a085", "cterm": "36" }
let s:emerald=        { "gui": "#2ecc71", "cterm": "41" }
let s:nephritis=      { "gui": "#27ae60", "cterm": "35" }

let s:peterRiver=     { "gui": "#3498db", "cterm": "68"  }
let s:belizeHole=     { "gui": "#2980b9", "cterm": "31"  }
let s:amethyst=       { "gui": "#9b59b6", "cterm": "133" }
let s:wisteria=       { "gui": "#8e44ad", "cterm": "97" }

let s:carrot=         { "gui": "#e67e22", "cterm": "172"  }
let s:pumpkin=        { "gui": "#d35400", "cterm": "166"  }
let s:sunFlower=      { "gui": "#f1c40f", "cterm": "220" }
let s:orange=         { "gui": "#f39c12", "cterm": "214" }

let s:alizarin=       { "gui": "#e74c3c", "cterm": "167"  }
let s:pomegranate=    { "gui": "#c0392b", "cterm": "130" }

" Assign to semantic categories based on background color
" Light theme
let s:bg=s:clouds
let s:norm=s:midnightBlue
let s:comment=s:silver
let s:dimmed=s:asbestos
let s:subtle=s:concrete
let s:faint=s:silver
let s:accent1=s:greenSea
let s:accent2=s:orange
let s:accent3=s:wisteria
let s:accent4=s:pumpkin
let s:accent5=s:turquoise
let s:accent6=s:sunFlower
let s:accent7=s:amethyst
let s:accent8=s:carrot
let s:normRed=s:pomegranate
let s:normGreen=s:nephritis
let s:normBlue=s:belizeHole
let s:faintRed=s:alizarin
let s:faintGreen=s:emerald
let s:faintBlue=s:peterRiver

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
	call s:h("MatchParen",  { "fg": s:bg, "bg": s:accent7, "gui": "bold" })
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
call s:h("Cursor",       { "fg": s:bg, "bg": s:norm })
call s:h("Visual",       { "bg": s:faintBlue })
call s:h("IncSearch",    { "bg": s:faintBlue })
call s:h("Search",       { "bg": s:faintGreen })
call s:h("StatusLine",   { "fg": s:norm, "bg": s:faint, "gui": "bold", "cterm": "bold" })
call s:h("StatusLineNC", { "fg": s:dimmed, "bg": s:faint })
call s:h("SignColumn",   { "fg": s:dimmed })
call s:h("VertSplit",    { "fg": s:subtle, "bg": s:faint })
call s:h("TabLine",      { "fg": s:dimmed, "bg": s:faint })
call s:h("TabLineSel",   { "gui": "bold", "cterm": "bold" })
call s:h("Folded",       { "fg": s:comment, "bg": s:faint })
call s:h("Directory",    { "fg": s:accent1 })
call s:h("Title",        { "fg": s:accent4, "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",     { "bg": s:normRed })
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
call s:h("Type",       { "fg": s:accent2 })
call s:h("String",     { "fg": s:normBlue })
call s:h("Keyword",    { "fg": s:accent4, "gui": "bold", "cterm": "bold" })
call s:h("Todo",       { "fg": s:normRed, "gui": "bold", "cterm": "bold" })
call s:h("Function",   { "gui": "bold", "cterm": "bold" })
call s:h("Identifier", { "fg": s:accent1 })
call s:h("Statement",  { "fg": s:accent1 })
call s:h("Constant",   { "fg": s:faintBlue, "gui": "bold", "cterm": "bold" })
" hi! link Identifier	Function
" hi! link Statement	Type
" hi! link Constant	Directory
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
" Highlights - Python ----------------------------------------{{{
call s:h("pythonBuiltin",      { "fg": s:greenSea, "gui": "bold", "cterm": "bold" })
call s:h("pythonBuiltinObj",   { "fg": s:greenSea, "gui": "bold", "cterm": "bold" })
call s:h("pythonBuiltinFunc",  { "fg": s:greenSea, "gui": "bold", "cterm": "bold" })
call s:h("pythonEscape",       { "fg": s:normBlue, "gui": "bold", "cterm": "bold" })
call s:h("pythonException",    { "fg": s:normRed, "gui": "bold", "cterm": "bold" })
call s:h("pythonPrecondit",    { "fg": s:normGreen })
call s:h("pythonDecorator",    { "fg": s:dimmed, "gui": "bold", "cterm": "bold" })
call s:h("pythonRun",          { "fg": s:faintRed, "gui": "bold", "cterm": "bold" })
call s:h("pythonCoding",       { "fg": s:faintRed, "gui": "bold", "cterm": "bold" })

"}}}
" Highlights - Clojure ----------------------------------------{{{

call s:h("clojureSpecial",     { "fg": s:accent8 })
call s:h("clojureDefn",        { "fg": s:accent8 })
call s:h("clojureDefMacro",    { "fg": s:accent8 })
call s:h("clojureDefine",      { "fg": s:accent8 })
call s:h("clojureMacro",       { "fg": s:accent6 })
call s:h("clojureCond",        { "fg": s:accent6 })
call s:h("clojureKeyword",     { "fg": s:accent5 })
call s:h("clojureFunc",        { "fg": s:accent7 })
call s:h("clojureRepeat",      { "fg": s:accent8 })
call s:h("clojureAnonArg",     { "fg": s:faint })

"}}}
" vim: fdm=marker
