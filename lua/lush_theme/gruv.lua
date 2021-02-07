local lush = require('lush')
local hsl = lush.hsl
local fg = hsl(43, 59, 81)
local fg4 = hsl(43, 23, 56)
local bg  = hsl(0, 0, 16)
local bg2  = hsl(20, 5, 22)
local red = hsl(2, 75, 46)
local red_light = hsl(6, 96, 59)
local yellow = hsl(40, 73, 49)
local green = hsl(60, 71, 35)
local blue = hsl(183, 33, 40)
local blue_light = hsl(157, 16, 58)
local purple = hsl(333, 34, 54)
local aqua = hsl(122, 21, 51)
-- ref comment

local theme = lush(function()
  return {
    Normal { bg = bg, fg = fg},
    ColorColumn { bg = bg2 },
    CursorLine {bg = bg2},
    Comment {fg = fg4},
    TSString { fg = green }, -- For strings.
    TSKeyword { fg = red_light },
    TSOperator { fg = fg }, -- For any operator: `+`, but also `->` and `*` in C.
    TSFunction { fg = blue }, -- For function (calls and definitions).
    TSVariable { fg = blue }, -- Any variable name that does not have another highlight.
    TSVariableBuiltin { fg = blue_light }, -- Variable names that are defined by the languages, like `this` or `self`.
    -- TSNamespace { fg = blue_light }, -- For identifiers referring to modules and namespaces.
    -- TSParameter { fg = blue }, -- For parameters of a function.
    -- TSParameterReference { fg = blue }, -- For references to parameters of a function.
    TSField { fg = blue_light },
    TSConditional { fg = purple }, -- For keywords related to conditionnals.
    TSType { fg = blue_function }, -- For types.
    TSInclude { fg = aqua }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    ErrorMsg { fg = red },
    WarningMsg {fg = red },
    LspDiagnosticsError { fg = red }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsWarning { fg = yellow }, -- used for "Warning" diagnostic virtual text
    LspDiagnosticsWarningSign { fg = yellow }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsWarningFloating { fg = yellow }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsInformation { fg = yellow }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsHint { fg = yellow }, -- used for "Hint" diagnostic virtual text
    TabLine      { bg = bg }, -- tab pages line, not active tab page label
    TabLineFill  { bg = bg }, -- tab pages line, where there are no labels
    TabLineSel   { bg = bg }, -- tab pages line, active tab page label
  }
end)

return theme
