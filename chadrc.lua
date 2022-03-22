local userPlugins = require "custom.plugins"
local pluginConf = require "custom.plugins.config"

local M = {}

M.ui = {
   hl_override = "custom.highlights",
   theme = "gruvbox",
   transparency = true,
}

M.options = {
   relativenumber = true,
}

M.plugins = {
   status = {
      alpha = true, -- dashboard
   },
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.configs.lsp",
      },
   },
   default_plugin_config_replace = {
      nvim_treesitter = pluginConf.treesitter,
      nvim_tree = pluginConf.nvimtree,
   },
   install = userPlugins,
}

return M
