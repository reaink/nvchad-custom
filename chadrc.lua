local M = {}

local highlights = require "custom.highlights"

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  hl_add = highlights.add,
  hl_override = highlights.override,
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },
  theme = "onedark", -- default theme
  transparency = false,
}

M.plugins = require "custom.plugins"

M.mappings = require "custom.mappings"

return M
