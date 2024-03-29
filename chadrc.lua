---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = { "nightfox", "gruvbox_light" },
  theme = "nightfox",
  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = false,
  nvdash = {
    load_on_startup = true,
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
