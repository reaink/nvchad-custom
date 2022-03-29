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
      blankline = true,
      cmp = true,
      lspsignature = true,
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
      nvim_cmp = "custom.plugins.configs.cmp",
      bufferline = pluginConf.bufferline,
      indent_blankline = pluginConf.indent_blankline,
      gitsigns = pluginConf.gitsigns,
   },
   install = userPlugins,
}

return M
