local M = {}

M.treesitter = {
   ensure_installed = {
      "lua",
      "html",
      "css",
   },
   incremental_selection = {
      enable = true,
      keymaps = {
         init_selection = "gnn",
         node_incremental = "grn",
         scope_incremental = "grc",
         node_decremental = "grm",
      },
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

return M
