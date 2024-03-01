zebulon
=======

neovim colorscheme with very limited palette.

colors
------

9 colors for syntax highlighting:

```lua
Identifier = { ctermfg = 016  },  -- black
Function   = { ctermfg = 19   },  -- blue
Statement  = { ctermfg = 178  },  -- yellow
Operator   = { ctermfg = 160  },  -- red
String     = { ctermfg = 28   },  -- green
Constant   = { ctermfg = 30   },  -- turquoise
Type       = { ctermfg = 163  },  -- magenta
Special    = { ctermfg = 200  },  -- pink
Comment    = { ctermfg = 145,     -- grey
               italic  = true },
```

interface colors are even simplier: everything in greys, except cursor (yellow) and parentheses matching (pink).
