vim.background = "dark"
vim.termguicolors = false
vim.g.colors_name = 'zebulon_night'

local hi = vim.api.nvim_set_hl

local grey0            = '#000000'
local _grey0           = 16
local grey100          = "#ffffff"
local _grey100         = 231
local _grey69          = 145
local grey69           = "#afafaf"
local turquoise4       = "#008787"
local _turquoise4      = 30
local _red3            = 160
local red3             = "#d70000"
local _magenta3        = 163
local magenta3         = "#d700af"
local _gold1           = 220
local gold1            = "#ffd700"
local _grey93          = 255
local grey93           = "#eeeeee"
local _deepskyblue1    = 39
local deepskyblue1     = "#00afff"
local _darkred         = 52
local darkred          = "#5f0000"
local _steelblue1      = 81
local steelblue1       = "#5fd7ff"
local _seagreen1       = 85
local seagreen1        = "#5fffaf"
local _darkolivegreen3 = 113
local darkolivegreen3  = "#87d75f"
local _orchid          = 170
local orchid           = "#d75fd7"
local _red1            = 196
local red1             = "#ff0000"
local _hotpink         = 205
local hotpink          = "#ff5faf"
local mediumordit1     = "#ff5fff"
local _mediumordit1    = 207
local grey15           = "#262626"
local _grey15          = 235
local grey46           = "#767676"
local _grey46          = 243
local _mediumvioletred = 126
local mediumvioletred  = "#af0087"
local _grey35          = 240
local grey35           = "#585858"

-- local _mistyrose1      = 224
-- local mistyrose1       = "#ffd7d7"
-- local gold3            = "#d7af00"
-- local deeppink         = "#87005f"
-- local _deeppink        = 89
-- local green4           = "#008700"
-- local _green4          = 28
-- local blue3            = "#0000af"
-- local _blue3           = 19
-- local _gold3           = 178
-- local _magenta2        = 200
-- local magenta2         = "#ff00d7"
-- local _deepskyblue3    = 32
-- local deepskyblue3     = "#0087d7"
-- local lightskyblue3    = "#afd7ff"
-- local _lightskyblue3   = 153
-- local _orchid2         = 212
-- local orchid2          = "#ff87d7"
-- local _orange1         = 214
-- local orange1          = "#ffaf00"
--
local base = {

    -- syntax
    { "Comment",      { ctermfg = _grey46, fg=grey46, italic = true }},
    { "Constant",     { ctermfg = _seagreen1, fg = seagreen1  }},
    { "Function",     { ctermfg = _steelblue1, fg = steelblue1  }},
    { "Normal",       { ctermfg = _grey100, fg = grey100, ctermbg = _grey0, bg = grey0  }},
    { "Operator",     { ctermfg = _red1, fg = red1 }},
    { "Punctuation",  { ctermfg = _mediumvioletred, fg = mediumvioletred }},
    { "Special",      { ctermfg = _orchid, fg = orchid }},
    { "Statement",    { ctermfg = _gold1, fg = gold1 }},
    { "String",       { ctermfg = _darkolivegreen3, fg = darkolivegreen3 }},
    { "Title",        { ctermfg = _magenta3, fg = magenta3, bold = true }},
    { "Type",         { ctermfg = _mediumordit1, fg = mediumordit1 }},
    { "Underlined",   { ctermfg = _deepskyblue1, fg = deepskyblue1, underline = true }},

    -- interface
    { "Cursor",       { ctermbg = _red3, bg = red3, ctermfg = _grey100, fg = grey100 }},
    { "CursorLine",   {               }},
    { "CursorColumn", {               }},
    { "EndOfBuffer",  {               }},
    { "CursorLineNr", { ctermfg = _gold1, fg = gold1 }},
    { "Error",        { ctermbg = _darkred, bg = darkred, ctermfg = nil }},
    { "LineNr",       { ctermfg = _grey35, fg = grey35, ctermbg = _grey0, bg = grey0  }},
    { "MatchParen",   { ctermbg = _hotpink, bg = hotpink, ctermfg = _grey0, fg = grey0  }},
    { "Pmenu",        { ctermfg = _grey69, fg = grey69, ctermbg = _grey15, bg = grey15 }},
    { "SignColumn",   { ctermbg = _grey0, bg = grey0, ctermfg = _grey69, fg = grey69 }},
    { "TabLineFill",  { ctermfg = _grey93, fg = grey93 }},
    { "Visual",       { ctermbg = _grey15, bg = grey15 }},

    -- plugin
    {'LeapLabel', { ctermbg = _gold1, bg = gold1, ctermfg = _turquoise4, fg = turquoise4 }},

    -- markdown polyphony
    {'Bold', { bold = true }},
    {'Italic', { italic = true}},
    {'ItalicString', { ctermfg = _green4, fg=green4, italic = true }},
    {'ItalicParenthese', { ctermfg = _blue3, fg=blue3, italic = true }},
    {'ItalicBold', { italic = true, bold = true }},
    {'BoldString', { ctermfg = _green4, fg=green4, bold = true }},
    {'BoldParenthese', { ctermfg = _blue3, fg=blue3, bold = true }},
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
