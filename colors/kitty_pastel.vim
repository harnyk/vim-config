" kitty_pastel: pastel scheme matching kitty tab colors
" bg #260630, active tab #c792ea, inactive tab bg #3d1a4d, inactive tab fg #a892b0

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "kitty_pastel"
set background=dark

let s:bg        = "#260630"
let s:bg_alt     = "#3d1a4d"
let s:bg_light   = "#4a2359"
let s:fg         = "#e5dcec"
let s:fg_dim     = "#a892b0"
let s:comment    = "#7a6389"
let s:purple     = "#c792ea"
let s:pink       = "#f4b8e4"
let s:green      = "#b8e8b0"
let s:blue       = "#a0c8f0"
let s:cyan       = "#a8e8dc"
let s:yellow     = "#f0e6a0"
let s:orange     = "#f0c8a0"
let s:red        = "#f0a8a8"
let s:visual     = "#44475a"

function! s:hi(group, fg, bg, attr)
  let cmd = "hi ".a:group
  if a:fg != ""
    let cmd .= " guifg=".a:fg." ctermfg=".s:cterm(a:fg)
  endif
  if a:bg != ""
    let cmd .= " guibg=".a:bg." ctermbg=".s:cterm(a:bg)
  endif
  if a:attr != ""
    let cmd .= " gui=".a:attr." cterm=".a:attr
  else
    let cmd .= " gui=NONE cterm=NONE"
  endif
  exec cmd
endfunction

" rough hex->256 approximation good enough for terminal fallback
function! s:cterm(hex)
  return "NONE"
endfunction

" Editor UI
call s:hi("Normal", s:fg, s:bg, "")
call s:hi("NonText", s:bg_alt, "", "")
call s:hi("EndOfBuffer", s:bg_alt, "", "")
call s:hi("Cursor", s:bg, s:purple, "")
call s:hi("CursorLine", "", s:bg_alt, "NONE")
call s:hi("CursorLineNr", s:purple, s:bg_alt, "bold")
call s:hi("LineNr", s:fg_dim, "", "")
call s:hi("SignColumn", "", s:bg, "")
call s:hi("ColorColumn", "", s:bg_alt, "")
call s:hi("VertSplit", s:bg_alt, s:bg, "")
call s:hi("WinSeparator", s:bg_alt, s:bg, "")
call s:hi("StatusLine", s:bg, s:purple, "bold")
call s:hi("StatusLineNC", s:fg_dim, s:bg_alt, "NONE")
call s:hi("TabLine", s:fg_dim, s:bg_alt, "NONE")
call s:hi("TabLineFill", "", s:bg_alt, "NONE")
call s:hi("TabLineSel", s:bg, s:purple, "bold")
call s:hi("Pmenu", s:fg, s:bg_alt, "")
call s:hi("PmenuSel", s:bg, s:purple, "bold")
call s:hi("PmenuSbar", "", s:bg_alt, "")
call s:hi("PmenuThumb", "", s:purple, "")
call s:hi("Visual", "", s:visual, "NONE")
call s:hi("Search", s:bg, s:yellow, "NONE")
call s:hi("IncSearch", s:bg, s:orange, "NONE")
call s:hi("MatchParen", s:pink, s:bg_light, "bold")
call s:hi("Directory", s:blue, "", "")
call s:hi("Folded", s:fg_dim, s:bg_alt, "italic")
call s:hi("FoldColumn", s:fg_dim, s:bg, "")
call s:hi("WildMenu", s:bg, s:purple, "")
call s:hi("Title", s:purple, "", "bold")
call s:hi("ErrorMsg", s:red, s:bg, "bold")
call s:hi("WarningMsg", s:orange, "", "")
call s:hi("ModeMsg", s:green, "", "")
call s:hi("MoreMsg", s:green, "", "")
call s:hi("Question", s:green, "", "")
call s:hi("SpecialKey", s:comment, "", "")

" Diff
call s:hi("DiffAdd", s:green, s:bg_alt, "")
call s:hi("DiffChange", s:yellow, s:bg_alt, "")
call s:hi("DiffDelete", s:red, s:bg_alt, "")
call s:hi("DiffText", s:blue, s:bg_alt, "bold")

" Spelling
call s:hi("SpellBad", s:red, "", "undercurl")
call s:hi("SpellCap", s:blue, "", "undercurl")
call s:hi("SpellRare", s:purple, "", "undercurl")
call s:hi("SpellLocal", s:cyan, "", "undercurl")

" Syntax
call s:hi("Comment", s:comment, "", "italic")
call s:hi("Constant", s:orange, "", "")
call s:hi("String", s:green, "", "")
call s:hi("Character", s:green, "", "")
call s:hi("Number", s:orange, "", "")
call s:hi("Boolean", s:orange, "", "")
call s:hi("Float", s:orange, "", "")
call s:hi("Identifier", s:pink, "", "NONE")
call s:hi("Function", s:blue, "", "bold")
call s:hi("Statement", s:purple, "", "NONE")
call s:hi("Conditional", s:purple, "", "")
call s:hi("Repeat", s:purple, "", "")
call s:hi("Label", s:purple, "", "")
call s:hi("Operator", s:pink, "", "")
call s:hi("Keyword", s:purple, "", "")
call s:hi("Exception", s:red, "", "")
call s:hi("PreProc", s:cyan, "", "")
call s:hi("Include", s:cyan, "", "")
call s:hi("Define", s:cyan, "", "")
call s:hi("Macro", s:cyan, "", "")
call s:hi("PreCondit", s:cyan, "", "")
call s:hi("Type", s:cyan, "", "NONE")
call s:hi("StorageClass", s:cyan, "", "")
call s:hi("Structure", s:cyan, "", "")
call s:hi("Typedef", s:cyan, "", "")
call s:hi("Special", s:pink, "", "")
call s:hi("SpecialChar", s:pink, "", "")
call s:hi("Tag", s:purple, "", "")
call s:hi("Delimiter", s:fg_dim, "", "")
call s:hi("SpecialComment", s:comment, "", "bold")
call s:hi("Debug", s:red, "", "")
call s:hi("Underlined", s:blue, "", "underline")
call s:hi("Ignore", s:fg_dim, "", "")
call s:hi("Error", s:red, s:bg, "bold")
call s:hi("Todo", s:yellow, s:bg_alt, "bold")

hi Visual term=NONE cterm=NONE ctermbg=238 guifg=NONE guibg=#44475a
