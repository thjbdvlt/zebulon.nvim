vim.background = "light"
vim.termguicolors = false
vim.g.colors_name = 'zebulon'

local hi = vim.api.nvim_set_hl

local grey0          = '#000000'
local _grey0         = 16
local grey100        = "#ffffff"
local _grey100       = 231
local blue3          = "#0000af"
local _blue3         = 19
local _grey69        = 145
local grey69         = "#afafaf"
local turquoise4     = "#008787"
local _turquoise4    = 30
local green4         = "#008700"
local _green4        = 28
local _red3          = 160
local red3           = "#d70000"
local deeppink       = "#87005f"
local _deeppink      = 89
local _magenta3       = 163
local magenta3      = "#d700af"
local gold3          = "#d7af00"
local _gold3         = 178
local _magenta2      = 200
local magenta2       = "#ff00d7"
local _deepskyblue3  = 32
local deepskyblue3   = "#0087d7"
local lightskyblue3  = "#afd7ff"
local _lightskyblue3 = 153
local _orchid2       = 212
local orchid2        = "#ff87d7"
local _orange1       = 214
local orange1        = "#ffaf00"
local _gold1         = 220
local gold1          = "#ffd700"
local _mistyrose1    = 224
local mistyrose1     = "#ffd7d7"
local _grey93        = 255
local grey93         = "#eeeeee"

local grey_a         = "#dedede"

local base = {

    -- syntax
    { "Comment",     { ctermfg = _grey69, fg=grey69, italic = true }},
    { "Constant",    { ctermfg = _turquoise4, fg = turquoise4  }},
    { "Function",    { ctermfg = _blue3, fg = blue3  }},
    { "Normal",      { ctermfg = _grey0, ctermbg = _grey100, fg = grey0, bg = grey100}} ,
    { "Operator",    { ctermfg = _red3, fg=red3 }},
    { "Punctuation", { ctermfg = _deeppink, fg=deeppink  }},
    { "Special",     { ctermfg = _magenta2, fg=magenta2 }},
    { "Statement",   { ctermfg = _gold3, fg=gold3 }},
    { "String",      { ctermfg = _green4, fg=green4  }},
    { "Title",       { ctermfg = _magenta3, fg=magenta3, bold = true }},
    { "Type",        { ctermfg = _magenta3, fg=magenta3 }},
    { "Underlined",  { ctermfg = _deepskyblue3, fg=deepskyblue3, underline = true }},

    -- interface
    { "Cursor",       { ctermbg = _orchid2, bg=orchid2, ctermfg = _orange1, fg=orange1 }},
    { "CursorLine",   {               }},
    { "CursorColumn", {               }},
    { "EndOfBuffer",  {               }},
    { "CursorLineNr", { ctermfg = _gold3, fg=gold3 }},
    { "Error",        { ctermbg = _mistyrose1, bg=mistyrose1, ctermfg = nil }},
    { "LineNr",       { ctermfg = _grey93, fg=grey_a, ctermbg = _grey100, bg=grey100 }},
    { "MatchParen",   { ctermbg = _lightskyblue3, bg=lightskyblue3, ctermfg = _grey0, fg=grey0 }},
    { "Pmenu",        { ctermfg = _grey0, fg=grey0, ctermbg = _grey93, bg=grey93 }},
    { "SignColumn",   { ctermbg = _grey100, bg=grey100, ctermfg = _grey69, fg=grey69 }},
    { "TabLineFill",  { ctermfg = _grey93, fg=grey93 }},
    { "Visual",       { ctermbg = _grey93, bg = grey93 }},

    -- plugins
    -- leap
    {'LeapLabel', { ctermbg = _gold1, bg=gold1, ctermfg = _grey0, fg=grey0 }},

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
    MatchParen = {'LeapLabel'},
}

for group, subgroups in pairs(links) do
    for i=1, #subgroups do
        hi(0, subgroups[i], { link = group })
    end
end
