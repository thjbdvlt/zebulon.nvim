vim.background = "dark"
vim.termguicolors = false
vim.g.colors_name = 'zebulon_night'

local hi = vim.api.nvim_set_hl

local base = {

    -- syntax
    { "Comment",      { ctermfg = 243, italic = true }},
    { "Constant",     { ctermfg = 85  }},
    { "Function",     { ctermfg = 81  }},
    { "Normal",       { ctermfg = 231, ctermbg = 16  }},
    { "Operator",     { ctermfg = 196 }},
    { "Punctuation",  { ctermfg = 126 }},
    { "Special",      { ctermfg = 170 }},
    { "Statement",    { ctermfg = 220 }},
    { "String",       { ctermfg = 113 }},
    { "Title",        { ctermfg = 163, bold = true }},
    { "Type",         { ctermfg = 207 }},
    { "Underlined",   { ctermfg = 39, underline = true }},

    -- interface
    { "Cursor",       { ctermbg = 160, ctermfg = 231 }},
    { "CursorLine",   {               }},
    { "CursorLineNr", { ctermfg = 220 }},
    { "Error",        { ctermbg = 52, ctermfg = nil }},
    { "LineNr",       { ctermfg = 240, ctermbg = 16  }},
    { "MatchParen",   { ctermbg = 205, ctermfg = 16  }},
    { "Pmenu",        { ctermfg = 145, ctermbg = 234 }},
    { "SignColumn",   { ctermbg = 16, ctermfg = 145 }},
    { "TabLineFill",  { ctermfg = 255 }},
    { "Visual",       { ctermbg = 235 }},

    -- plugin
    {'LeapLabelPrimary', { ctermbg = 220, ctermfg = 30 }},
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
        "NormalFloat",
        -- git gutter
        "GitGutterAdd",
        "GitGutterChange",
        "GitGutterDelete",
        "GitGutterChangeDelete",
        "diffAdd",
        "diffChanged",
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
        "Folded",
    },
    Pmenu = {
        "ModeMsg",
        "StatusLine",
        "TabLineSel",
    },
    Error = {
        "DiagnosticError",
        "SpellBad",
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
