local M = {}

M.alpha = {
   header = {
      val = {
         "          ▀████▀▄▄              ▄█ ",
         "            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
         "    ▄        █          ▀▀▀▀▄  ▄▀  ",
         "   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
         "  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
         "  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
         "   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
         "    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
         "   █   █  █      ▄▄           ▄▀   ",
      },
   },
}

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

M.bufferline = {
   highlights = {
      background = {
         guibg = "NONE",
      },
      fill = {
         guibg = "NONE",
      },
      close_button = {
         guibg = "NONE",
      },
      separator_visible = {
         guibg = "NONE",
      },
      tab_close = {
         guibg = "NONE",
      },
   },
}

return M
