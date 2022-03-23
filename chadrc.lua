local userPlugins = require "custom.plugins"
local pluginConf = require "custom.plugins.config"

local M = {}

M.ui = {
   hl_override = "custom.highlights",
   theme = "onedark-deep",
   transparency = true,
}

M.options = {
   relativenumber = true,
}

M.plugins = {
   status = {
      colorizer = true,
      alpha = true, -- dashboard
   },
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.configs.lsp",
      },
      statusline = {
         style = "block", -- default, round , slant , block , arrow
      },
   },
   default_plugin_config_replace = {
      alpha = pluginConf.alpha,
      nvim_treesitter = pluginConf.treesitter,
      nvim_tree = pluginConf.nvimtree,
      bufferline = pluginConf.bufferline,
   },
   install = userPlugins,
}

return M
