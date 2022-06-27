local pluginConfs = require "custom.plugins.configs"

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  theme_toggle = { "onedark", "one_light" },
  theme = "gruvchad",
  transparency = true,
}

M.plugins = {
  user = require "custom.plugins.init",
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
    statusline = {
      separator_style = "default",
      config = "%!v:lua.require'ui.statusline'.run()",
    },
  },
  overwrite = {
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
    ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
  }
}

M.mappings = require "custom.mappings"

return M
