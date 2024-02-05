-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--



local lush = require('lush')
local hsl = lush.hsl


local pa = { -- my colors
    black = hsl(0,0,0),
    white = hsl(0,0,100),

    rice = hsl(33,52,96),
    pearl = hsl(42,45,85),

    grey = hsl(0,0,50),
    charcoal_grey = hsl(190,5,25),

    black_pearl = hsl(201,19,15),

    sky = hsl(205,95,75),
    navy = hsl(220,97,12),
    -- blue_da = hsl(211,60,13),
    deep_azure = hsl(210,100,17),
    niagara = hsl(221,31,69),
    blue_moon = hsl(202,25,56),


    orange = hsl(33,100,50),
    orangey_red = hsl(8,96,56),

    red = hsl(357,90,55),
    mit_red = hsl(350,68,38),
    blood = hsl(0,96,28),
    dired_blood = hsl(0,97,15),

    yellow = hsl(50,100,60),

    green = hsl(98,68,53),
    lichen = hsl(100,29,60),

    hot_magenta = hsl(313,100,56),

    quartz = hsl(150,10,62),
    wisteria = hsl(251,31,68),


}

    local jbn = { -- jellybeans palette
    foreground = hsl("#e8e8d3"),
    background = hsl("#151515"),
    grey = hsl("#888888"),
    grey_one = hsl("#1c1c1c"),
    grey_two = hsl("#f0f0f0"),
    grey_three = hsl("#333333"),
    regent_grey = hsl("#9098A0"),
    scorpion = hsl("#606060"),
    cod_grey = hsl("#101010"),
    tundora = hsl("#404040"),
    zambezi = hsl("#605958"),
    silver_rust = hsl("#ccc5c4"),
    silver = hsl("#c7c7c7"),
    alto = hsl("#dddddd"),
    gravel = hsl("#403c41"),
    boulder = hsl("#777777"),
    cocoa_brown = hsl("#302028"),
    grey_chateau = hsl("#a0a8b0"),
    bright_grey = hsl("#384048"),
    shuttle_grey = hsl("#535d66"),
    mine_shaft = hsl("#1f1f1f"),
    temptress = hsl("#40000a"),

    bayoux_blue = hsl("#556779"),
    total_white = hsl("#ffffff"),
    total_black = hsl("#000000"),
    cadet_blue = hsl("#b0b8c0"),
    perano = hsl("#b0d0f0"),
    hoki = hsl("#668799"),
    wewak = hsl("#f0a0c0"),
    raw_sienna = hsl("#cf6a4c"),
    mantis = hsl("#70b950"),
    highland = hsl("#799d6a"),
    green_smoke = hsl("#99ad6a"),
    costa_del_sol = hsl("#556633"),
    tea_green = hsl("#d2ebbe"),
    dell = hsl("#437019"),
    biloba_flower = hsl("#c6b6ee"),
    morning_glory = hsl("#8fbfdc"),
    goldenrod = hsl("#fad07a"),
    ship_cove = hsl(222,23,57),
    koromiko = hsl("#ffb964"),
    brandy = hsl("#dad085"),
    old_brick = hsl("#902020"),
    dark_blue = hsl("#0000df"),
    ripe_plum = hsl("#540063"),
    casal = hsl("#2D7067"),
    purple = hsl("#700089"),
    calypso = hsl("#2B5B77"),
}

local base = {
    background = pa.black,
    foreground = jbn.foreground,
}

local theme = lush(function(injected_functions)
    local sym = injected_functions.sym
    return {
        -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
        -- groups, mostly used for styling UI elements.
        -- Comment them out and add your own properties to override the defaults.
        -- An empty definition `{}` will clear all styling, leaving elements looking
        -- like the 'Normal' group.
        -- To be able to link to a group, it must already be defined, so you may have
        -- to reorder items as you go.
        --
        -- See :h highlight-groups

        Normal         { bg = base.background, fg = pa.rice }, -- Normal text
        NormalNC       { fg = pa.rice }, -- normal text in non-current windows
        Comment        { fg = pa.grey }, -- Any comment
        NonText        { Comment }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Whitespace     { Comment }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        Visual         { bg = jbn.tundora }, -- Visual mode selection
        -- Visual         { bg = pa.navy.li(10) }, -- Visual mode selection
        -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".

        ColorColumn    { bg = pa.black_pearl }, -- Columns set with 'colorcolumn'



        Directory      { fg = jbn.morning_glory, gui = "bold" }, -- Directory names (and other special names in listings)
        Conceal        { fg = pa.yellow }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
        EndOfBuffer    { fg = jbn.gravel }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        VertSplit      { fg = jbn.gravel }, -- Column separating vertically split windows
        -- WinBar         { }, -- Window bar of current window
        -- WinBarNC       { }, -- Window bar of not-current windows
        Winseparator   { fg = jbn.gravel }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        -- MatchParen     { bg = jbn.cocoa_brown, fg = jbn.wewak }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        MatchParen     { bg = pa.charcoal_grey }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        WildMenu       { bg = jbn.cocoa_brown, fg = jbn.wewak }, -- Current match in 'wildmenu' completion



        Cursor         { bg = base.background, fg = jbn.perano }, -- Character under the cursor
        -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
        -- TermCursor     { }, -- Cursor in a focused terminal
        -- TermCursorNC   { }, -- Cursor in an unfocused terminal

        CursorColumn   { ColorColumn }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine     { ColorColumn }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.

        LineNr         { fg = pa.grey.da(10) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
        -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
        CursorLineNr   { fg = pa.pearl }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.



        Folded         { bg = pa.black_pearl, fg = jbn.grey.li(20) }, -- Line used for closed folds

        -- FoldColumn     { bg = base.background, fg =  jbn.morning_glory }, -- 'foldcolumn'
        FoldColumn     { fg =  jbn.morning_glory }, -- 'foldcolumn'
        SignColumn     { bg = base.background }, -- Column where |signs| are displayed

        -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
        -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line



        -- Var. 1 (orange + navy)
        Search         { bg = pa.navy.li(12), fg = pa.rice }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        CurSearch      { bg = pa.orange, fg = pa.black }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
        IncSearch      { Search }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"

        -- Var. 2 (white + navy)
        -- Search         { bg = pa.rice, fg = pa.black }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        -- CurSearch      { bg = pa.navy.li(12), fg = pa.rice }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
        -- IncSearch      { Search }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"

        Substitute     { bg = pa.navy.li(12), fg = pa.rice, gui = "bold" }, -- |:substitute| replacement text highlighting
        -- Substitute     { bg = jbn.cocoa_brown, fg = jbn.wewak, gui = "bold" }, -- |:substitute| replacement text highlighting



        DiffAdd        { fg = pa.green }, -- Diff mode: Added line |diff.txt|
        DiffChange     { fg = pa.orange }, -- Diff mode: Changed line |diff.txt|
        DiffDelete     { fg = pa.red }, -- Diff mode: Deleted line |diff.txt|
        DiffText       { bg = pa.deep_azure.li(2), fg = pa.rice }, -- Diff mode: Changed text within a changed line |diff.txt|

        ErrorMsg       { bg = pa.mit_red, fg = pa.rice }, -- Error messages on the command line



        ModeMsg        { fg = pa.pearl }, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea        { fg = pa.pearl }, -- Area for messages and cmdline
        -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg        { fg = jbn.mantis }, -- |more-prompt|
        -- WarningMsg     { }, -- Warning messages



        Title          { fg = pa.hot_magenta, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
        -- NormalFloat    { }, -- Normal text in floating windows.
        -- FloatBorder    { }, -- Border of floating windows.
        -- FloatTitle     { }, -- Title of floating windows.



        Pmenu          { bg = base.background.li(30), fg = pa.rice }, -- Popup menu: Normal item.
        PmenuSel       { bg = jbn.ship_cove, fg = pa.black }, -- Popup menu: Selected item.

        -- ???
        PmenuKind      { fg = pa.red }, -- Popup menu: Normal item "kind"
        -- ???
        PmenuKindSel   { fg = pa.yellow }, -- Popup menu: Selected item "kind"

        -- ???
        PmenuExtra     { fg = pa.pearl }, -- Popup menu: Normal item "extra text"
        -- ???
        PmenuExtraSel  { fg = pa.green }, -- Popup menu: Selected item "extra text"

        PmenuSbar      { bg = pa.charcoal_grey.da(40), fg = pa.rice }, -- Popup menu: Scrollbar.
        PmenuThumb     { bg = pa.charcoal_grey.li(5) }, -- Popup menu: Thumb of the scrollbar.



        Question       { fg = jbn.mantis }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine   { bg = jbn.bright_grey }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        SpecialKey     { bg = jbn.grey_one, fg = jbn.tundora }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|



        SpellBad       { bg = jbn.old_brick }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap       { bg = jbn.dark_blue }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal     { bg = jbn.casal }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare      { bg = jbn.ripe_plum }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.



        StatusLine     { bg = jbn.grey_one, fg = pa.pearl }, -- Status line of current window
        StatusLineNC   { bg = base.background, fg = pa.pearl }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.



        TabLineSel     { bg = pa.black, fg = jbn.mantis }, -- Tab pages line, active tab page label
        TabLine        { bg = pa.black, fg = jbn.grey }, -- Tab pages line, not active tab page label
        TabLineFill    { fg = jbn.regent_grey }, -- Tab pages line, where there are no labels



        -- Common vim syntax groups used for all kinds of code and markup.
        -- Commented-out groups should chain up to their preferred (*) group
        -- by default.
        --
        -- See :h group-name
        --
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant       { fg = pa.orangey_red }, -- (*) Any constant
        String         { fg = pa.green }, --   A string constant: "this is a string"
        Character      { fg = jbn.tea_green }, --   A character constant: 'c', '\n'
        Number         { fg = jbn.perano }, --   A number constant: 234, 0xff
        Boolean        { fg = pa.blue_moon, gui = "bold" }, --   A boolean constant: TRUE, false
        Float          { Number }, --   A floating point constant: 2.3e10

        Identifier     { Normal }, -- (*) Any variable name
        Function       { fg = pa.orange }, --   Function name (also: methods for classes)

        Statement      { fg = pa.niagara, gui = "bold" }, -- (*) Any statement
        Conditional    { fg = pa.yellow, gui = "bold" }, --   if, then, else, endif, switch, etc.
        Repeat         { fg = pa.yellow, gui = "bold" }, --   for, do, while, etc.
        Label          { fg = pa.yellow, gui = "bold" }, --   case, default, etc.
        Operator       { Statement }, --   "sizeof", "+", "*", etc.
        Keyword        { fg = pa.yellow, gui = "bold" }, --   any other keyword
        Exception      { fg = pa.yellow, gui = "bold" }, --   try, catch, throw

        PreProc        { fg = jbn.ship_cove }, -- (*) Generic Preprocessor
        -- Include        { }, --   Preprocessor #include
        Define         { fg = jbn.ship_cove, gui = "bold" }, --   Preprocessor #define
        Macro          { Define }, --   Same as Define
        PreCondit      { Define }, --   Preprocessor #if, #else, #endif, etc.

        Type           { fg = pa.quartz }, -- (*) int, long, char, etc.
        StorageClass   { fg = pa.orangey_red }, --   static, register, volatile, etc.
        Structure      { StorageClass }, --   struct, union, enum, etc.
        -- Typedef        { }, --   A typedef

        Special        { fg = jbn.koromiko }, -- (*) Any special symbol
        -- SpecialChar    { }, --   Special character in a constant
        -- Tag            { }, --   You can use CTRL-] on this
        Delimiter      { bg = jbn.hoki }, --   Character that needs attention
        -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
        -- Debug          { }, --   Debugging statements

        -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
        -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)

        Error          { bg = pa.mit_red }, -- Any erroneous construct
        Todo           { bg = pa.blue_moon, fg = pa.black }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- These groups are for the native LSP client and diagnostic system. Some
        -- other LSP clients may use these groups, or use their own. Consult your
        -- LSP client's documentation.

        -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
        --
        -- LspReferenceText            { } , -- Used for highlighting "text" references
        -- LspReferenceRead            { } , -- Used for highlighting "read" references
        -- LspReferenceWrite           { } , -- Used for highlighting "write" references
        -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
        -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

        -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
        --
        -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
        -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
        -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
        -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
        -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
        -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
        -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
        -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
        -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
        -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
        -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
        -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
        -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
        -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
        -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
        -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

        -- Tree-Sitter syntax groups.
        --
        -- See :h treesitter-highlight-groups, some groups may not be listed,
        -- submit a PR fix to lush-template!
        --
        -- Tree-Sitter groups are defined with an "@" symbol, which must be
        -- specially handled to be valid lua code, we do this via the special
        -- sym function. The following are all valid ways to call the sym function,
        -- for more details see https://www.lua.org/pil/5.html
        --
        -- sym("@text.literal")
        -- sym('@text.literal')
        -- sym"@text.literal"
        -- sym'@text.literal'
        --
        -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

        -- sym"@text.literal"      { }, -- Comment
        -- sym"@text.reference"    { }, -- Identifier
        -- sym"@text.title"        { }, -- Title
        -- sym"@text.uri"          { }, -- Underlined
        -- sym"@text.underline"    { }, -- Underlined
        -- sym"@text.todo"         { }, -- Todo
        -- sym"@comment"           { }, -- Comment
        -- sym"@punctuation"       { }, -- Delimiter
        -- sym"@constant"          { }, -- Constant
        -- sym"@constant.builtin"  { }, -- Special
        -- sym"@constant.macro"    { }, -- Define
        -- sym"@define"            { }, -- Define
        -- sym"@macro"             { }, -- Macro
        -- sym"@string"            { }, -- String
        -- sym"@string.escape"     { }, -- SpecialChar
        -- sym"@string.special"    { }, -- SpecialChar
        -- sym"@character"         { }, -- Character
        -- sym"@character.special" { }, -- SpecialChar
        -- sym"@number"            { }, -- Number
        -- sym"@boolean"           { }, -- Boolean
        -- sym"@float"             { }, -- Float
        -- sym"@function"          { }, -- Function
        -- sym"@function.builtin"  { }, -- Special
        -- sym"@function.macro"    { }, -- Macro
        -- sym"@parameter"         { }, -- Identifier
        -- sym"@method"            { }, -- Function
        -- sym"@field"             { }, -- Identifier
        -- sym"@property"          { }, -- Identifier
        -- sym"@constructor"       { }, -- Special
        -- sym"@conditional"       { }, -- Conditional
        -- sym"@repeat"            { }, -- Repeat
        -- sym"@label"             { }, -- Label
        -- sym"@operator"          { }, -- Operator
        -- sym"@keyword"           { }, -- Keyword
        -- sym"@exception"         { }, -- Exception
        -- sym"@variable"          { }, -- Identifier
        -- sym"@type"              { }, -- Type
        -- sym"@type.definition"   { }, -- Typedef
        -- sym"@storageclass"      { }, -- StorageClass
        -- sym"@structure"         { }, -- Structure
        -- sym"@namespace"         { }, -- Identifier
        -- sym"@include"           { }, -- Include
        -- sym"@preproc"           { }, -- PreProc
        -- sym"@debug"             { }, -- Debug
        -- sym"@tag"               { }, -- Tag



        -- Telescope
        TelescopeBorder { fg = jbn.ship_cove },
        TelescopeSelection { fg = jbn.ship_cove.lighten(46), bg = jbn.ship_cove.darken(74) },
        TelescopeMatching { Search },
        TelescopeSelectionCaret { fg = jbn.koromiko },
        TelescopePromptPrefix { fg = jbn.koromiko },

        -- GitSigns
        GitSignsAdd { DiffAdd },
        GitSignsChange { DiffChange },
        GitSignsDelete { DiffDelete },
    }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
