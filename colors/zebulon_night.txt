" zebulon (night version)
" colorscheme for neovim (256 colors)
" Copyright (C) 2024 thjbdvlt

" (for comments, see zebulon.nvim)

hi clear
set background=dark
let g:colors_name="zebulon_night"

hi! Normal cterm=NONE ctermbg=016 ctermfg=231
hi! link Identifier Normal
hi! link @variable Identifier
hi! link @parameter @variable
hi! link @field @variable

hi! Function cterm=NONE ctermfg=81 ctermbg=016
hi! link @function Function
hi! link @function.builtin @function
hi! link @function.call @function
hi! link @method @function

hi! Comment cterm=italic ctermbg=016 ctermfg=243

hi! Statement cterm=NONE ctermfg=220 ctermbg=016
hi! link Include Statement
hi! link PreProc Statement

hi! Type cterm=NONE ctermfg=207 ctermbg=016
hi! link @type Type
hi! link @constructor @type

hi! Constant cterm=NONE ctermfg=85 ctermbg=016
hi! link Boolean Constant
hi! link Number Constant
hi! link @constant Constant
hi! link @number @constant
hi! link @boolean @constant
hi! link @number @constant
hi! link @character @constant

hi! String cterm=NONE ctermfg=113 ctermbg=016

hi! Link cterm=NONE ctermfg=75 ctermbg=016

hi! Special cterm=NONE ctermfg=170 ctermbg=016

hi! Title cterm=NONE ctermfg=160 ctermbg=016

hi! Punctuation cterm=NONE ctermfg=126 ctermbg=016
hi! link @punctuation Punctuation

hi! Operator cterm=NONE ctermfg=196 ctermbg=016
hi! link @operator Operator

hi! Cursor ctermbg=160 ctermfg=231
hi! CursorLine cterm=NONE ctermbg=016
hi! CursorLineNr ctermfg=149 cterm=NONE ctermbg=016
hi! CursorLineSign ctermfg=231 cterm=NONE ctermbg=016
hi! FoldColumn ctermfg=151 ctermbg=016
hi! Folded cterm=NONE ctermbg=016 ctermfg=145
hi! LineNr ctermfg=240 ctermbg=016
hi! MatchParen ctermbg=221 ctermfg=016 cterm=NONE
hi! ModeMsg cterm=NONE ctermfg=231 ctermbg=016
hi! NonText cterm=NONE ctermfg=235 ctermbg=016
hi! WinSeparator   cterm=NONE  ctermfg=235 ctermbg=231
hi! NormalFloat ctermbg=016
hi! Pmenu ctermfg=145 ctermbg=234
hi! PmenuSel ctermfg=231 ctermbg=238
hi! SignColumn ctermbg=016
hi! SignColumn ctermbg=016
hi! StatusLine cterm=none ctermbg=255 ctermfg=016
hi! StatusLineNC cterm=none ctermbg=231 ctermfg=145
hi! TabLine cterm=NONE ctermfg=145
hi! TabLineFill ctermfg=231 cterm=none
hi! TabLineSel cterm=NONE ctermfg=016
hi! VertSplit ctermfg=231 cterm=none
hi! Visual ctermbg=235
hi! Error ctermbg=160 ctermfg=231

hi! Todo cterm=NONE ctermbg=151 ctermfg=160

hi! DiagnosticError ctermfg=160 ctermbg=016
hi! DiagnosticFloatingHint ctermfg=145 ctermbg=016
hi! link DiagnosticVirtualTextHint DiagnosticFloatingHint
hi! link DiagnosticSignHint DiagnosticFloatingHint

hi! link LspReferenceText Visual
hi! link LspReferenceRead Visual
hi! link LspReferenceWrite Visual
