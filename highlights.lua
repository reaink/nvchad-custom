local M = {}

M.override = {
  AlphaHeader = { fg = "blue" },

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

M.add = {}

return M
