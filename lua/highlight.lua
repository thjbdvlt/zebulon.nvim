-- zebulon
-- colorscheme for neovim (256 colors)
-- Copyright (C) 2024 thjbdvlt

-- syntax reset
-- hi clear
-- set background = light
-- let g:colors_name = "zebulon"

local M = {

    -- Normal is in the most readable colors: black on white background.
    {"Normal", { ctermbg = 231, ctermfg = 016 }},
    -- as in many language there is no such thing as 'normal' (but in markdown,
    -- in which i write a lot, most of text is Normal), it seems
    -- preferable to me if at least one other group has these colors.
    -- i think that Variable/Identifier or Function are a good option.
    {"Identifier", { link = "Normal" }},
    {"@variable", { link = "Identifier" }},
    {"@parameter", { link = "@variable" }},
    {"@field", { link = "@variable" }},
    -- local normal = {"Identifier", "@variable", "@parameter", "@field"}
    -- for i=1, #normal do {normal[i], {link = "Normal"}) end

    -- function could have long names, just as variables, so it's seems better
    -- to gave them a dark readable color.
    {"Function", { ctermfg = 19 }}, -- or 18?
    {"@function", { link = "Function" }},
    {"@function.builtin", { link = "@function" }},
    {"@function.call", { link = "@function" } },
    {"@method", { link = "@function" }},

    -- As comments has a status different from all other syntax groups, it
    -- is the only one which is italic. as they are often used as a
    -- 'deactivated' mechanism, grey seems to be meaningfull: between code
    -- (foreground) and non-code (background).
    {"Comment", { italic = true, ctermfg = 145 }},

    -- Statement seems to be pretty short, and it is good if it is very
    -- different from other groups such as variable and functions.
    -- yellow seems to be a good option, then. plus, i don't see anything 
    -- (appart from interface and comments) that could be yellow, because it 
    -- makes long names unreadable.
    {"Statement", { ctermfg = 178 }},
    {"Include", { link = "Statement" }},
    {"PreProc", { link = "Statement" }},

    -- operator in red, same reasons as for yellow.
    {"Operator", { ctermfg = 160 }},
    {"@operator", { link = "Operator" }},

    -- in my writing practice, strings are very commons, and can be very 
    -- longs. and i need to read it (for example, i use it also for 
    -- highlighting quotes in markdown, so i need a very readable color, once
    -- again.
    {"String", { ctermfg = 28 }},

    -- string is a subtype of constant, so it's seems good if both have 
    -- near colors (turquoise / green seems near).
    {"Constant", { ctermfg = 30 } },
    {"@constant", { link = "Constant" }},
    {"Boolean", { link = "@constant" }},
    {"@number", { link = "@constant" }},
    {"@character", { link = "@constant" }},
    {"@constant.builtin", { link = "@constant" }},

    -- other things in pink/magenta (different tones},
    {"Type", { ctermfg = 163 }}, -- " or: 126, 207, 200, 162?},
    {"@type", { link = "Type" }},
    {"@constructor", { link = "Type" }},
    {"@type.builtin", { link = "Type" }},

    {"Special", { ctermfg = 200 }},
    {"Title", { link = "Special" }},

    {"Punctuation", { ctermfg = 89 }},
    {"@punctuation", { link = "Punctuation" }},

    -- cursor must be very visible, yellow seems good (or pink?},
    {"Cursor", {ctermbg = 212, ctermfg = 214}},
    -- i dislike backgrounding the cursor line, so i highlight instead the 
    -- CursorLineNr, so i quickly see where the cursor is.
    {"CursorLine", {}},
    {"CursorLineNr", { ctermfg = 178 }},
    {"CursorLineSign", {ctermfg = 231} },

    {"MatchParen", {ctermbg = 207, ctermfg = 231}},

    -- the rest of the interface should be discrete, i think grey 
    -- is a good thing. so i put grey for anything else.
    --
    -- for Pmenu (especially if it spams very often), a light background.
    -- 255 is a light grey. good for backgrounds.
    {"Pmenu", {ctermfg = 016, ctermbg = 255}},
    {"Visual", {ctermbg = 255}},

    -- i don't use that much LineNr (i jump using Leap.vim), so lineNr 
    -- doesn't need to be visible.
    {"LineNr", {ctermfg = 254, ctermbg = 231}},

    -- folding white so there is no horizontal bars. i think that the 
    -- dotted line is enough.
    {"Folded", {ctermbg = 231, ctermfg = 016}},
    {"FoldColumn", {ctermfg = 145, ctermbg = 231}},

    -- NonText give no usefull information: nearly invisible.
    {"NonText", {ctermfg = 255, ctermbg = 231}},
    {"WinSeparator", {ctermfg = 255, ctermbg = 231}},

    -- but ModeMsg give usefull informations, grey too but more visible.
    {"ModeMsg", {ctermfg = 016, ctermbg = 231}},
    {"NormalFloat", { ctermbg = 231 }},

    -- discrete sign column (gr},
    {"SignColumn", { ctermbg = 231, ctermfg = 145 }},
    {"TabLine",  { ctermfg = 145 }},
    {"TabLineFill", { ctermfg = 231  }},
    {"TabLineSel",  { ctermfg = 016 }},
    {"VertSplit", { ctermfg = 231  }},

    -- StatusLine (if not LuaLine or something) is simple and discrete too.
    {"StatusLine",  { ctermbg = 255, ctermfg = 016 }},
    {"StatusLineNC",  { ctermbg = 231, ctermfg = 145 }},

    -- Errors must be very visible.
    {"Error", { ctermbg = 160, ctermfg = 231 }},
    {"DiagnosticError", { ctermfg = 160, ctermbg = 231 }},

    -- all others diagnostic should not be too visible.
    {"DiagnosticFloatingHint", { ctermfg = 145 }},
    {"DiagnosticVirtualTextHint", { link = "DiagnosticFloatingHint" }},
    {"DiagnosticSignHint", { link = "DiagnosticFloatingHint" }},

    {"LspReferenceText", { link = "Visual" }},
    {"LspReferenceRead", { link = "Visual" }},
    {"LspReferenceWrite", { link = "Visual" }},


    -- FileType specifics

    -- no function in markdown, so i use it for code and codeBlock.
    {"markdownCode", { link = "Function" }},
    {"markdownCodeBlock", { link = "markdownCode" }},
    -- Link  ctermfg = 025
}

return M
