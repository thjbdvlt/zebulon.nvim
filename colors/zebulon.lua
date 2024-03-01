vim.cmd("hi clear")
vim.background = "light"
vim.termguicolors = false
vim.g.colors_name = 'zebulon'

local hi = vim.api.nvim_set_hl

local base = {
    -- syntax
    {"Normal", { ctermbg = 231, ctermfg = 016 }},
    {"Function", { ctermfg = 19 }},
    {"Comment", { italic = true, ctermfg = 145 }},
    {"Statement", { ctermfg = 178 }},
    {"Operator", { ctermfg = 160 }},
    {"String", { ctermfg = 28 }},
    {"Constant", { ctermfg = 30 } },
    {"Type", { ctermfg = 163 }},
    {"Special", { ctermfg = 200 }},
    {"Title", { ctermfg = 163, bold = true }},
    {"Punctuation", { ctermfg = 89 }},

    -- interface
    {"Visual", {ctermbg = 255}},
    {"Pmenu", {ctermfg = 016, ctermbg = 255}},
    {"Cursor", {ctermbg = 212, ctermfg = 214}},
    {"CursorLine", {}},
    {"CursorLineNr", { ctermfg = 178 }},
    {"MatchParen", {ctermbg = 207, ctermfg = 231}},
    {"Error", { ctermbg = 160, ctermfg = 231 }},
    {"TabLineFill", { ctermfg = 255  }},
    {"LineNr", {ctermfg = 254, ctermbg = 231}},
    {"SignColumn", { ctermbg = 231, ctermfg = 145 }},
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
        "@field"
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
        "Folded",
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
