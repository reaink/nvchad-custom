-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  DiffAdd = { fg = "none", bg = "#103235" },
  DiffChange = { fg = "none", bg = "#272D43" },
  DiffText = { fg = "none", bg = "#394b70" },
  DiffDelete = { fg = "none", bg = "#3F2D3D" },
  DiffviewDiffAddAsDelete = { fg = "none", bg = "#3f2d3d" },
  DiffviewDiffDelete = { fg = "none", bg = "#3B4252" },
  -- Left pannel
  DiffAddAsDelete = { fg = "none", bg = "#3F2D3D" },
  DiffDeleteText = { fg = "none", bg = "#4B1818" },
  -- Right pannel
  DiffAddText = { fg = "none", bg = "#1C5458" },
}

---@type HLTable
M.add = {
  LspInlayHint = { link = "Comment" },
}

return M
