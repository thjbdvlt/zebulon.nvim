vim.cmd("hi clear")
vim.background = "light"
vim.termguicolors = false
vim.g.colors_name = 'zebulon'

local hi = vim.api.nvim_set_hl

local base = {

    -- syntax
    { "Normal",      { ctermfg = 16,
                       ctermbg = 231 }} ,
    { "Function",    { ctermfg = 19  }},
    { "Statement",   { ctermfg = 178 }},
    { "Operator",    { ctermfg = 160 }},
    { "String",      { ctermfg = 28  }},
    { "Constant",    { ctermfg = 30  }},
    { "Type",        { ctermfg = 163 }},
    { "Special",     { ctermfg = 200 }},
    { "Punctuation", { ctermfg = 89  }},
    { "Title",       { ctermfg = 163,
                         bold = true }},
    { "Comment",     { ctermfg = 145,
                       italic = true }},

    -- interface
    { "Visual",       { ctermbg = 255 }},
    { "Pmenu",        { ctermfg = 16,
                        ctermbg = 255 }},
    { "Cursor",       { ctermbg = 212,
                        ctermfg = 214 }},
    { "CursorLine",   {               }},
    { "CursorLineNr", { ctermfg = 178 }},
    { "MatchParen",   { ctermbg = 153,
                        ctermfg = 016 }},
    { "Error",        { ctermbg = 160,
                        ctermfg = 231 }},
    { "TabLineFill",  { ctermfg = 255 }},
    { "LineNr",       { ctermfg = 254,
                        ctermbg = 231 }},
    { "SignColumn",   { ctermbg = 231,
                        ctermfg = 145 }},

    -- plugin
    {'LeapLabelPrimary', { ctermbg = 220, ctermfg = 016 }}
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

    -- plugin
    MatchParen = {'LeapLabelSecondary'},
}

for group, subgroups in pairs(links) do
    for i=1, #subgroups do
        hi(0, subgroups[i], { link = group })
    end
end
