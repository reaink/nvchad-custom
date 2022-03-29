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
   ensure_installed = "maintained",
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

M.indent_blankline = {
   show_current_context = true,
   show_current_context_start = true,
   show_end_of_line = true,
   show_first_indent_level = true,
}

M.gitsigns = {
   current_line_blame = true,
}

return M
