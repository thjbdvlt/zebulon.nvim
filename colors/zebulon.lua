vim.background = "light"
vim.termguicolors = false
vim.g.colors_name = 'zebulon'

local hi = vim.api.nvim_set_hl

local base = {

    -- syntax
    { "Comment",     { ctermfg = 145, italic = true }},
    { "Constant",    { ctermfg = 30  }},
    { "Function",    { ctermfg = 19  }},
    { "Normal",      { ctermfg = 16, ctermbg = 231 }} ,
    { "Operator",    { ctermfg = 160 }},
    { "Punctuation", { ctermfg = 89  }},
    { "Special",     { ctermfg = 200 }},
    { "Statement",   { ctermfg = 178 }},
    { "String",      { ctermfg = 28  }},
    { "Title",       { ctermfg = 163, bold = true }},
    { "Type",        { ctermfg = 163 }},
    { "Underlined",  { ctermfg = 32, underline = true }},

    -- interface
    { "Cursor",       { ctermbg = 212, ctermfg = 214 }},
    { "CursorLine",   {               }},
    { "CursorLineNr", { ctermfg = 178 }},
    { "Error",        { ctermbg = 224, ctermfg = nil }},
    { "LineNr",       { ctermfg = 254, ctermbg = 231 }},
    { "MatchParen",   { ctermbg = 153, ctermfg = 016 }},
    { "Pmenu",        { ctermfg = 16, ctermbg = 255 }},
    { "SignColumn",   { ctermbg = 231, ctermfg = 145 }},
    { "TabLineFill",  { ctermfg = 255 }},
    { "Visual",       { ctermbg = 255 }},

    -- plugins
    -- leap
    {'LeapLabelPrimary', { ctermbg = 220, ctermfg = 016 }},
    -- markdown polyphony
    {'Bold', { bold = true }},
    {'Italic', { italic = true}},
    {'ItalicString', { ctermfg = 28, italic = true }},
    {'ItalicParenthese', { ctermfg = 19, italic = true }},
    {'ItalicBold', { italic = true, bold = true }},
    {'BoldString', { ctermfg = 28, bold = true }},
    {'BoldParenthese', { ctermfg = 19, bold = true }},
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

    -- plugin
    MatchParen = {'LeapLabelSecondary'},
}

for group, subgroups in pairs(links) do
    for i=1, #subgroups do
        hi(0, subgroups[i], { link = group })
    end
end
