-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "catppuccin",

hl_override = {
 	Comment = { italic = true },
 	["@comment"] = { italic = true },

  CursorLine = { bg = '#2e3440' },
 },
  transparency = true
}

return M
