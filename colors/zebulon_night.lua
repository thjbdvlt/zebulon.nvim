vim.cmd("hi clear")
vim.background = "dark"
vim.termguicolors = false
vim.g.colors_name = 'zebulon_night'

local hi = vim.api.nvim_set_hl

local base = {

 -- syntax
 { "Normal",       { ctermfg = 231,
                     ctermbg = 16  }},
 { "Function",     { ctermfg = 81  }},
 { "Comment",      { ctermfg = 243,
                     italic = true }},
 { "Statement",    { ctermfg = 220 }},
 { "Operator",     { ctermfg = 196 }},
 { "String",       { ctermfg = 113 }},
 { "Constant",     { ctermfg = 85  }},
 { "Type",         { ctermfg = 207 }},
 { "Special",      { ctermfg = 170 }},
 { "Title",        { ctermfg = 160,
                       bold = true }},
 { "Punctuation",  { ctermfg = 126 }},

 -- interface
 { "Visual",       { ctermbg = 235 }},
 { "Pmenu",        { ctermfg = 145,
                     ctermbg = 234 }},
 { "Cursor",       { ctermbg = 160,
                     ctermfg = 231 }},
 { "CursorLine",   {               }},
 { "CursorLineNr", { ctermfg = 220 }},
 { "MatchParen",   { ctermbg = 221,
                     ctermfg = 16  }},
 { "Error",        { ctermbg = 160,
                     ctermfg = 231 }},
 { "TabLineFill",  { ctermfg = 255 }},
 { "LineNr",       { ctermfg = 240,
                     ctermbg = 16  }},
 { "SignColumn",   { ctermbg = 16,
                     ctermfg = 145 }},

}

for i=1, #base do
    local y = base[i]
    hi(0, y[1], y[2])
end

local links = {

    -- syntax
    Normal = {
        "Identifier",
        "@variable",
        "@parameter",
        "@field",
        "Folded",
    },
    Function = {
        "@function",
        "@function.builtin",
        "@function.call",
        "@method",
        "markdownCode",
        "markdownCodeBlock",
    },
    Statement = {
        "Include",
        "PreProc"
    },
    Operator = {
        "@operator"
    },
    Constant = {
        "@constant",
        "Boolean",
        "@number",
        "@character",
        "@constant.builtin",
    },
    Type = {
        "@type",
        "@constructor",
        "@type.builtin",
    },
    Punctuation = {
        "@punctuation"
    },

    -- interface
    LineNr = {
        "NonText",
        "WinSeparator",
    },
    CursorLineNr = {
        "CursorLineSign",
    },
    SignColumn =  {
        "FoldColumn",
        "StatusLineNC",
        "TabLine",
        "VertSplit",
        "NormalFloat",
        "DiagnosticFloatingHint",
        "DiagnosticVirtualTextHint",
        "DiagnosticSignHint",
    },
    Pmenu = {
        "ModeMsg",
        "StatusLine",
        "TabLineSel",
    },
    Error = {
        "DiagnosticError",
    },
    Visual = {
        "LspReferenceText",
        "LspReferenceRead",
        "LspReferenceWrite",
    },
}

for group, subgroups in pairs(links) do
    for i=1, #subgroups do
        hi(0, subgroups[i], { link = group })
    end
end
