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


-- TODO:
-- [ ] lsp
-- [ ] cmp


local lush = require('lush')
local hsl = lush.hsl


local c = { -- my own palette
    black = hsl(0,0,0),
    white = hsl(0,0,100),

    rice = hsl(33,52,96),
    pearl = hsl(42,45,85),
    grey = hsl(0,0,50),

    charcoal_grey = hsl(190,5,25),
    black_pearl = hsl(201,19,15),

    sky = hsl(205,95,75),
    navy = hsl(220,97,12),
    blue_da = hsl(211,60,13),
    deep_azure = hsl(210,100,17),
    blue_moon = hsl(202,25,56),

    orange = hsl(33,100,50),
    orangey_red = hsl(8,96,56),

    red = hsl(357,90,55),
    mit_red = hsl(350,68,38),
    blood = hsl(0,96,28),
    dired_blood = hsl(0,97,15),

    yellow = hsl(50,100,50),
    -- grb_yellow = hsl("#ffdd33"),

    green = hsl(98,68,53),
    lichen = hsl(100,29,60),
}


local jbn = {
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
    cadet_blue = hsl("#b0b8c0"),
    perano = hsl("#b0d0f0"),
    wewak = hsl("#f0a0c0"),
    mantis = hsl("#70b950"),
    raw_sienna = hsl("#cf6a4c"),
    highland = hsl("#799d6a"),
    hoki = hsl("#668799"),
    green_smoke = hsl("#99ad6a"),
    costa_del_sol = hsl("#556633"),
    biloba_flower = hsl("#c6b6ee"),
    morning_glory = hsl("#8fbfdc"),
    goldenrod = hsl("#fad07a"),
    ship_cove = hsl("#8197bf"),
    koromiko = hsl("#ffb964"),
    brandy = hsl("#dad085"),
    old_brick = hsl("#902020"),
    dark_blue = hsl("#0000df"),
    ripe_plum = hsl("#540063"),
    casal = hsl("#2D7067"),
    purple = hsl("#700089"),
    tea_green = hsl("#d2ebbe"),
    dell = hsl("#437019"),
    calypso = hsl("#2B5B77"),
}


local grb = { -- gruber-darker palette
    fg = hsl("#e4e4e4"),
    fg_li1 = hsl("#f4f4ff"),
    fg_li2 = hsl("#f5f5f5"),
    white = hsl("#ffffff"),
    black = hsl("#000000"),
    bg_da1 = hsl("#101010"),
    bg = hsl("#181818"),
    bg_li1 = hsl("#282828"),
    bg_li2 = hsl("#453d41"),
    bg_li3 = hsl("#484848"),
    bg_li4 = hsl("#52494e"),
    red_da1 = hsl("#c73c3f"),
    red = hsl("#f43841"),
    red_li1 = hsl("#ff4f58"),
    green = hsl("#73d936"),
    yellow = hsl("#ffdd33"),
    brown = hsl("#cc8c3c"),
    quartz = hsl("#95a99f"),
    niagara_da2 = hsl("#303540"),
    niagara_da1 = hsl("#565f73"),
    niagara = hsl("#96a6c8"),
    wisteria = hsl("#9e95c7"),
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

        Normal         { fg = grb.fg, bg = grb.bg }, -- Normal text
        NormalNC       { Normal }, -- normal text in non-current windows
        Comment        { fg = grb.brown }, -- Any comment
        -- Comment        { fg = jbn.grey }, -- Any comment
        Whitespace     { fg = grb.bg.li(15) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        Visual         { bg = jbn.tundora.da(20) }, -- Visual mode selection
        -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
        -- ColorColumn    { bg =  jbn.tundora }, -- Columns set with 'colorcolumn'
        ColorColumn    { bg =  grb.bg_li1 }, -- Columns set with 'colorcolumn'

        NonText        { fg = jbn.tundora }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        EndOfBuffer    { fg = jbn.tundora }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        VertSplit      { fg = jbn.tundora }, -- Column separating vertically split windows



        Directory      { fg = jbn.morning_glory, gui = "bold" }, -- Directory names (and other special names in listings)
        Conceal        { fg = jbn.brandy }, -- Placeholder characters substituted for concealed text (see 'conceallevel')

        WinBar         { fg = jbn.grey }, -- Window bar of current window
        WinBarNC       { fg = jbn.tundora }, -- Window bar of not-current windows
        Winseparator   { fg = jbn.grey.da(10) }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.

        MatchParen     { bg = jbn.calypso }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|



        Cursor         { fg = grb.black, bg = c.rice }, -- Character under the cursor
        lCursor        { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM       { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
        TermCursor     { bg = c.rice, fg = c.black }, -- Cursor in a focused terminal
        TermCursorNC   { bg = c.grey, fg = c.black }, -- Cursor in an unfocused terminal

        CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.

        LineNr         { fg = jbn.grey }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        LineNrAbove    { fg = jbn.grey }, -- Line number for when the 'relativenumber' option is set, above the cursor line
        LineNrBelow    { fg = jbn.grey }, -- Line number for when the 'relativenumber' option is set, below the cursor line
        CursorLineNr   { fg = grb.fg }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.



        Folded         { fg = jbn.grey_chateau, bg = jbn.bright_grey }, -- Line used for closed folds
        FoldColumn     { fg =  jbn.brandy }, -- 'foldcolumn'
        SignColumn     { }, -- Column where |signs| are displayed
        -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
        -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line



        Search         { bg = c.deep_azure, fg = c.rice }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        CurSearch      { bg = c.pearl, fg = grb.black }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
        IncSearch      { bg = c.deep_azure, fg = c.rice }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"

        Substitute     { bg = c.deep_azure, fg = c.rice }, -- |:substitute| replacement text highlighting



        DiffAdd        { fg = c.green }, -- Diff mode: Added line |diff.txt|
        DiffChange     { fg = c.orange }, -- Diff mode: Changed line |diff.txt|
        DiffDelete     { fg = c.red }, -- Diff mode: Deleted line |diff.txt|
        DiffText       { fg = jbn.perano }, -- Diff mode: Changed text within a changed line |diff.txt|

        diffAdded      { DiffAdd },
        diffRemoved    { DiffDelete },
        diffChanged    { DiffChange },



        ModeMsg        { fg = grb.fg }, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea        { fg = grb.fg }, -- Area for messages and cmdline
        -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg        { fg = jbn.mantis }, -- |more-prompt|
        WarningMsg     { fg = jbn.koromiko }, -- Warning messages
        ErrorMsg       { bg = jbn.temptress, fg = c.rice }, -- Error messages on the command line
        -- Error          { bg = c.blood, fg = c.rice }, -- Any erroneous construct

        StatusLine     { bg = grb.bg_li1, fg = grb.fg }, -- Status line of current window
        -- StatusLineNC   { bg = grb.bg_li1.da(10), fg = c.rice }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.



        Title          { fg = c.sky, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.

        NormalFloat    { bg = grb.bg, fg = grb.fg }, -- Normal text in floating windows.
        FloatBorder    { Winseparator }, -- Border of floating windows.
        FloatTitle     { fg = jbn.perano, gui = "bold" }, -- Title of floating windows.



        Pmenu          { bg = grb.bg_li1, fg = grb.fg }, -- Popup menu: Normal item.
        PmenuSel       { bg = jbn.ship_cove.da(55), fg = grb.white }, -- Popup menu: Selected item.
        -- PmenuSel       { bg = jbn.scorpion.da(10), fg = grb.white }, -- Popup menu: Selected item.

        PmenuKind      { bg = grb.bg_li1, fg = grb.white }, -- Popup menu: Normal item "kind"
        PmenuKindSel   { fg = jbn.koromiko }, -- Popup menu: Selected item "kind"

        PmenuExtra     { fg = grb.wisteria }, -- Popup menu: Normal item "extra text"
        PmenuExtraSel  { fg = grb.wisteria }, -- Popup menu: Selected item "extra text"

        PmenuSbar      { bg = grb.bg_li1 }, -- Popup menu: Scrollbar.
        PmenuThumb     { bg = grb.niagara_da1 }, -- Popup menu: Thumb of the scrollbar.



        SpecialKey     { bg = jbn.grey_one, fg = jbn.tea_green, gui = "underline" }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        Question       { fg = jbn.mantis }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine   { fg = jbn.raw_sienna }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.



        SpellBad       { bg = jbn.temptress.li(10), fg = grb.fg }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap       { bg = jbn.calypso, fg = grb.fg }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal     { bg = jbn.casal, fg = grb.fg }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare      { bg = jbn.ripe_plum, fg = grb.fg }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.



        TabLineSel     { bg = grb.black, fg = c.orange }, -- Tab pages line, active tab page label
        TabLine        { bg = grb.black, fg = jbn.grey }, -- Tab pages line, not active tab page label
        TabLineFill    { bg = grb.black }, -- Tab pages line, where there are no labels



        -- Common vim syntax groups used for all kinds of code and markup.
        -- Commented-out groups should chain up to their preferred (*) group
        -- by default.
        --
        -- See :h group-name
        --
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant       { fg = grb.quartz }, -- (*) Any constant
        String         { fg = c.green }, --   A string constant: "this is a string"
        Character      { fg = jbn.tea_green }, --   A character constant: 'c', '\n'
        Boolean        { fg = c.blue_moon, gui = "bold" }, --   A boolean constant: TRUE, false
        Number         { fg = jbn.raw_sienna }, --   A number constant: 234, 0xff
        Float          { Number }, --   A floating point constant: 2.3e10

        Identifier     { Normal }, -- (*) Any variable name
        Function       { Normal }, --   Function name (also: methods for classes)

        Statement      { fg = c.yellow, gui = "bold" }, -- (*) Any statement
        Conditional    { Statement }, --   if, then, else, endif, switch, etc.
        Repeat         { Statement }, --   for, do, while, etc.
        Label          { Statement }, --   case, default, etc.
        Operator       { Normal }, --   "sizeof", "+", "*", etc.
        Keyword        { Statement }, --   any other keyword
        Exception      { Statement }, --   try, catch, throw

        PreProc        { fg = grb.quartz }, -- (*) Generic Preprocessor
        Include        { PreProc }, --   Preprocessor #include
        Define         { PreProc }, --   Preprocessor #define
        Macro          { fg = c.orangey_red }, --   Same as Define
        PreCondit      { Macro }, --   Preprocessor #if, #else, #endif, #ifndef, etc.
        cDefine        { Macro },
        cppAccess      { Macro }, -- public, protected, private

        Type           { fg = grb.quartz }, -- (*) int, long, char, etc.
        StorageClass   { Statement }, --   static, register, volatile, etc.
        Structure      { Statement }, --   struct, union, enum, etc.
        Typedef        { Statement }, --   A typedef

        Special        { fg = grb.yellow }, -- (*) Any special symbol
        -- SpecialChar    { }, --   Special character in a constant
        Tag            { fg = grb.wisteria, gui = "bold" }, --   You can use CTRL-] on this
        Delimiter      { fg = jbn.hoki }, --   Character that needs attention
        SpecialComment { fg = grb.wisteria, gui = "bold" }, --   Special things inside a comment (e.g. '\n')
        Debug          { fg = c.orange, gui = "bold" }, --   Debugging statements

        Underlined     { gui = "underline" }, -- Text that stands out, HTML links
        -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)

        Error          { ErrorMsg }, -- Any erroneous construct
        Todo           { bg = jbn.hoki, fg = grb.black, gui = "bold" }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX



        -- These groups are for the native LSP client and diagnostic system.
        -- Some other LSP clients may use these groups, or use their own.
        -- Consult your LSP client's documentation.

        -- See :h lsp-highlight, some groups may not be listed, submit a PR fix
        -- to lush-template!
        --
        -- LspReferenceText            { } , -- Used for highlighting "text" references
        -- LspReferenceRead            { } , -- Used for highlighting "read" references
        -- LspReferenceWrite           { } , -- Used for highlighting "write" references
        -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
        -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

        -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
        --
        DiagnosticError            { fg = c.red } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticWarn             { fg = c.orange } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticInfo             { fg = c.pearl } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticHint             { fg = c.blue_moon } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticOk               { fg = c.green } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
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
        -- sym function. The following are all valid ways to call the sym
        -- function, for more details see https://www.lua.org/pil/5.html
        --
        -- sym("@text.literal")
        -- sym('@text.literal')
        -- sym"@text.literal"
        -- sym'@text.literal'
        --
        -- For more information see
        -- https://github.com/rktjmp/lush.nvim/issues/109

        sym"@text.literal"      { Comment }, -- Comment
        sym"@text.reference"    { Tag }, -- Identifier
        sym"@text.title"        { Title }, -- Title
        sym"@text.uri"          { Tag }, -- Underlined
        sym"@text.underline"    { gui = "underline" }, -- Underlined
        sym"@text.todo"         { Todo }, -- Todo
        sym"@comment"           { Comment }, -- Comment
        sym"@punctuation"       { Normal }, -- Delimiter
        sym"@constant"          { Number }, -- Constant
        sym"@constant.builtin"  { Number }, -- Special
        sym"@constant.macro"    { Define }, -- Define
        sym"@define"            { Define }, -- Define
        sym"@macro"             { Macro }, -- Macro
        sym"@string"            { String }, -- String
        sym"@string.escape"     { Special }, -- SpecialChar
        sym"@string.special"    { Special }, -- SpecialChar
        sym"@character"         { Character }, -- Character
        sym"@character.special" { Special }, -- SpecialChar
        sym"@number"            { Number }, -- Number
        sym"@boolean"           { Boolean }, -- Boolean
        sym"@float"             { Float }, -- Float
        sym"@function"          { Function }, -- Function
        sym"@function.builtin"  { fg = grb.niagara }, -- Special
        sym"@function.macro"    { Macro }, -- Macro
        sym"@parameter"         { Identifier }, -- Identifier
        sym"@method"            { Function }, -- Function
        sym"@field"             { Identifier }, -- Identifier
        sym"@property"          { Identifier }, -- Identifier
        sym"@constructor"       { Normal }, -- Special
        sym"@conditional"       { Conditional }, -- Conditional
        sym"@repeat"            { Repeat }, -- Repeat
        sym"@label"             { Label }, -- Label
        sym"@operator"          { Operator }, -- Operator
        sym"@keyword"           { Keyword }, -- Keyword
        sym"@exception"         { Exception }, -- Exception
        sym"@variable"          { Identifier }, -- Identifier
        sym"@type"              { Type }, -- Type
        sym"@type.definition"   { Typedef }, -- Typedef
        sym"@storageclass"      { fg = c.orangey_red }, -- StorageClass
        sym"@structure"         { fg = c.orangey_red }, -- Structure
        sym"@namespace"         { fg = c.orangey_red }, -- Identifier
        sym"@include"           { Include }, -- Include
        sym"@preproc"           { PreProc }, -- PreProc
        sym"@debug"             { Debug  }, -- Debug
        sym"@tag"               { Tag }, -- Tag

        sym"@lsp.type.class.markdown" { fg = jbn.raw_sienna },
        sym"@markup.link.vimdoc" { Tag },
        sym"@label.vimdoc" { fg = jbn.brandy },



        -- Telescope
        TelescopeNormal   { bg = grb.bg, fg = grb.fg },
        TelescopeTitle    { fg = grb.fg },
        TelescopeBorder   { Winseparator  },
        TelescopeMatching { CurSearch },

        TelescopeSelectionCaret { fg = jbn.koromiko },
        TelescopePromptPrefix   { fg = jbn.koromiko },
        TelescopeMultiSelection { fg = jbn.wewak },



        -- GitSigns
        GitSignsAdd    { DiffAdd },
        GitSignsChange { DiffChange },
        GitSignsDelete { DiffDelete },



        -- Cmp-nvim
        CmpItemKind           { PmenuKind },
        CmpItemMenu           { Pmenu },
        CmpItemAbbr           { fg = grb.fg },
        CmpItemAbbrMatch      { fg = jbn.mantis, gui = "bold" },
        CmpAbbrMathFuzzy      { CmpItemAbbrMatch },
        CmpItemAbbrDeprecated { fg = jbn.silver.da(20) },

        CmpItemKindText         { fg = grb.fg },
        CmpItemKindMethod       { fg = grb.wisteria },
        CmpItemKindFunction     { fg = grb.wisteria },
        CmpItemKindConstructor  { fg = grb.wisteria },
        CmpItemKindField        { fg = grb.niagara.da(20) },
        CmpItemKindVariable     { Identifier }, -- XXX
        CmpItemKindValue        { Number },
        CmpItemKindConstant     { Number },
        CmpItemKindOperator     { Operator },
        CmpItemKindTypeParametr { Type },

        CmpItemKindInterface  { Type },
        CmpItemKindClass      { sym"@storageclass" },
        CmpItemKindStruct     { CmpItemKindClass },
        CmpItemKindModule     { CmpItemKindClass },
        CmpItemKindEnum       { CmpItemKindClass },
        CmpItemKindEnumMember { CmpItemKindField },
        CmpItemKindProperty   { CmpItemKindField },
        CmpItemKindUnit       { CmpItemKindField },

        CmpItemKindKeyword { Keyword },

        CmpItemKindSnippet { fg = jbn.tea_green },
        CmpItemKindColor   { fg = jbn.tea_green},

        CmpItemKindFile   { Directory },
        CmpItemKindFolder { Directory },

        CmpItemKindReference { Tag },
        CmpItemKindEvent     { fg = grb.brown },



        -- Oil
        OilDirHidden  { fg = jbn.grey },
        OilFileHidden { fg = jbn.grey },
    }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme
