" flatui.vim - Vim color scheme (http://flatuicolors.com)
" ----------------------------------------------------------
" Author:	  John Louis Del Rosario (http://john2x.com/)
" Version:	0.3
" License:	Same as Vim's. See ":help license".
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
let s:midnightBlue=   { "gui": "#2c3e50", "cterm": "236"  }
let s:clouds=         { "gui": "#ecf0f1", "cterm": "255" }
let s:silver=         { "gui": "#bdc3c7", "cterm": "7" }
let s:wetAsphalt=     { "gui": "#34495e", "cterm": "239" }
let s:concrete=       { "gui": "#95a5a6", "cterm": "247" }
let s:asbestos=       { "gui": "#7f8c8d", "cterm": "245" }

let s:turquoise=      { "gui": "#1abc9c", "cterm": "36"  }
let s:greenSea=       { "gui": "#16a085", "cterm": "29" }
let s:emerald=        { "gui": "#2ecc71", "cterm": "41" }
let s:nephritis=      { "gui": "#27ae60", "cterm": "35" }

let s:peterRiver=     { "gui": "#3498db", "cterm": "33"  }
let s:belizeHole=     { "gui": "#2980b9", "cterm": "26"  }
let s:amethyst=       { "gui": "#9b59b6", "cterm": "133" }
let s:wisteria=       { "gui": "#8e44ad", "cterm": "97" }

let s:carrot=         { "gui": "#e67e22", "cterm": "172"  }
let s:pumpkin=        { "gui": "#d35400", "cterm": "166"  }
let s:sunFlower=      { "gui": "#f1c40f", "cterm": "220" }
let s:orange=         { "gui": "#f39c12", "cterm": "214" }

let s:alizarin=       { "gui": "#e74c3c", "cterm": "196"  }
let s:pomegranate=    { "gui": "#c0392b", "cterm": "124" }

" Assign to semantic categories based on background color
" Light theme
let s:bg=s:clouds
let s:norm=s:midnightBlue
let s:comment=s:silver
let s:dimmed=s:asbestos
let s:subtle=s:concrete
let s:faint=s:silver
let s:faintAccent1=s:turquoise
let s:faintAccent2=s:emerald
let s:faintAccent3=s:peterRiver
let s:faintAccent4=s:amethyst
let s:faintAccent5=s:concrete
let s:faintAccent6=s:sunFlower
let s:faintAccent7=s:carrot
let s:faintAccent8=s:alizarin
let s:normAccent1=s:greenSea
let s:normAccent2=s:nephritis
let s:normAccent3=s:belizeHole
let s:normAccent4=s:wisteria
let s:normAccent5=s:wetAsphalt
let s:normAccent6=s:orange
let s:normAccent7=s:pumpkin
let s:normAccent8=s:pomegranate
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
	call s:h("CursorLine",  { "bg": s:silver })
	call s:h("MatchParen",  { "fg": s:bg, "bg": s:sunFlower, "gui": "bold" })
	call s:h("Pmenu",       { "bg": s:silver })
	call s:h("PmenuThumb",  { "bg": s:norm })
	call s:h("PmenuSBar",   { "bg": s:concrete })
	call s:h("PmenuSel",    { "bg": s:turquoise })
	call s:h("ColorColumn", { "bg": s:silver })
	call s:h("SpellBad",    { "sp": s:pomegranate, "gui": "undercurl" })
	call s:h("SpellCap",    { "sp": s:pomegranate, "gui": "undercurl" })
	call s:h("SpellRare",   { "sp": s:pumpkin, "gui": "undercurl" })
	call s:h("SpellLocal",  { "sp": s:pomegranate, "gui": "undercurl" })
	hi! link CursorColumn	CursorLine

	" Use background for cterm Spell*, which does not support undercurl
	execute "hi! SpellBad   ctermbg=" s:alizarin.cterm
	execute "hi! SpellCap   ctermbg=" s:alizarin.cterm
	execute "hi! SpellRare  ctermbg=" s:carrot.cterm
	execute "hi! SpellLocal ctermbg=" s:alizarin.cterm
endif

"}}}
" Highlights - UI ------------------------------------------{{{
call s:h("Normal",       { "fg": s:midnightBlue, "bg": s:bg })
call s:h("NonText",      { "fg": s:concrete })
call s:h("Cursor",       { "fg": s:clouds, "bg": s:wetAsphalt })
call s:h("Visual",       { "bg": s:emerald, "fg": s:clouds })
call s:h("IncSearch",    { "bg": s:sunFlower })
call s:h("Search",       { "bg": s:turquoise })
call s:h("StatusLine",   { "fg": s:clouds, "bg": s:concrete, "gui": "italic" })
call s:h("StatusLineNC", { "fg": s:silver, "bg": s:concrete })
call s:h("SignColumn",   { "fg": s:silver })
call s:h("VertSplit",    { "fg": s:silver, "bg": s:silver })
call s:h("TabLine",      { "fg": s:silver, "bg": s:silver })
call s:h("TabLineSel",   { "gui": "bold", "cterm": "bold" })
call s:h("Folded",       { "fg": s:clouds, "bg": s:silver })
call s:h("Directory",    { "fg": s:peterRiver })
call s:h("Title",        { "fg": s:carrot, "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",     { "fg": s:alizarin, "bg": s:pomegranate, "gui": "bold", "cterm": "bold" })
call s:h("DiffAdd",      { "bg": s:emerald })
call s:h("DiffChange",   { "bg": s:carrot })
call s:h("DiffDelete",   { "fg": s:pomegranate, "bg": s:alizarin })
call s:h("DiffText",     { "bg": s:carrot, "gui": "bold", "cterm": "bold" })
call s:h("User1",        { "fg": s:clouds, "bg": s:greenSea })
call s:h("User2",        { "fg": s:clouds, "bg": s:nephritis })
call s:h("User3",        { "fg": s:clouds, "bg": s:belizeHole })
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
call s:h("Delimiter",  { "fg": s:asbestos })
call s:h("Comment",    { "fg": s:silver, "gui": "italic" })
call s:h("Underlined", { "fg": s:midnightBlue, "gui": "underline", "cterm": "underline" })
call s:h("Type",       { "fg": s:wisteria })
call s:h("String",     { "fg": s:belizeHole })
call s:h("Keyword",    { "fg": s:turquoise, "gui": "bold", "cterm": "bold" })
call s:h("Todo",       { "fg": s:sunFlower, "gui": "bold", "cterm": "bold" })
call s:h("Function",   { "fg": s:wetAsphalt, "gui": "bold", "cterm": "bold" })
call s:h("Identifier", { "fg": s:greenSea })
call s:h("Statement",  { "fg": s:belizeHole })
call s:h("Constant",   { "fg": s:peterRiver, "gui": "bold", "cterm": "bold" })
call s:h("PreProc",    { "fg": s:emerald, "gui": "bold", "cterm": "bold" })
" hi! link Identifier	Function
" hi! link Statement	Type
" hi! link Constant	Directory
hi! link Number		Constant
hi! link Special	Constant
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
call s:h("pythonBuiltin",      { "fg": s:turquoise, "gui": "bold", "cterm": "bold" })
call s:h("pythonBuiltinObj",   { "fg": s:turquoise, "gui": "bold", "cterm": "bold" })
call s:h("pythonEscape",       { "fg": s:belizeHole, "gui": "bold", "cterm": "bold" })
call s:h("pythonException",    { "fg": s:pomegranate, "gui": "bold", "cterm": "bold" })
call s:h("pythonPrecondit",    { "fg": s:emerald, "gui": "bold", "cterm": "bold" })
call s:h("pythonDecorator",    { "fg": s:silver, "gui": "bold", "cterm": "bold" })
call s:h("pythonRun",          { "fg": s:alizarin, "gui": "bold", "cterm": "bold" })
call s:h("pythonCoding",       { "fg": s:alizarin, "gui": "bold", "cterm": "bold" })
hi! link pythonBuiltinFunc Function

"}}}
" Highlights - Clojure ----------------------------------------{{{

call s:h("clojureSpecial",     { "fg": s:alizarin, "gui": "bold", "cterm": "bold" })
call s:h("clojureDefn",        { "fg": s:turquoise, "gui": "bold", "cterm": "bold" })
call s:h("clojureDefMacro",    { "fg": s:turquoise, "gui": "bold", "cterm": "bold" })
call s:h("clojureDefine",      { "fg": s:turquoise, "gui": "bold", "cterm": "bold" })
call s:h("clojureMacro",       { "fg": s:wisteria })
call s:h("clojureCond",        { "fg": s:greenSea })
call s:h("clojureKeyword",     { "fg": s:greenSea })
call s:h("clojureFunc",        { "fg": s:wisteria })
call s:h("clojureRepeat",      { "fg": s:wisteria })
call s:h("clojureAnonArg",     { "fg": s:concrete })

"}}}
" vim: fdm=marker
