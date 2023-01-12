local M = {}

local highlights = require "custom.highlights"

M.plugins = require "custom.plugins"

-- M.options = {
--   nvChad = {
--     update_branch = "dev",
--   },
-- }

M.ui = {
  theme = "everforest",
  transparency = false,
  theme_toggle = { "everforest", "everforest_light" },

  hl_add = highlights.add,
  hl_override = highlights.override,
}

M.mappings = require "custom.mappings"

return M
