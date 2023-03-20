---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },

    ["<leader>cd"] = { "<cmd> cd %:p:h <CR> <cmd> pwd <CR>", "jump to current dir to pwd" },
    ["<leader>ca"] = { "<cmd> CodeActionMenu <CR>", "code action menu" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },
    ["<leader>so"] = { "<cmd> SymbolsOutline <CR>", "symbols outline" },

    ["<A-Down>"] = { "<cmd> res +1 <CR>", "resize window +1" },
    ["<A-Up>"] = { "<cmd> res -1 <CR>", "resize window -1" },
    ["<A-Right>"] = { "<cmd> vertical resize -1 <CR>", "resize window vertical -1" },
    ["<A-Left>"] = { "<cmd> vertical resize +1 <CR>", "resize window vertical +1" },

    ["<A-j>"] = { "<cmd> m+ <CR>", "move line ↓" },
    ["<A-k>"] = { "<cmd> m-2 <CR>", "move line ↑" },

    ["<A-=>"] = {
      function()
        require("nvchad_ui.tabufline").move_buf(1)
      end,
      "tabbuf move right",
    },
    ["<A-->"] = {
      function()
        require("nvchad_ui.tabufline").move_buf(-1)
      end,
      "tabbuf move left",
    },
    ["\\"] = {
      function()
        require("nvchad_ui.tabufline").tbufpick()
      end,
      "pick buffer",
    },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },

  t = {
    ["<C-;>"] = { "<C-\\><C-N>", "escape terminal mode" },
  },
}

M.lazygit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "open lazygit" },
    ["<leader>gf"] = { "<cmd> LazyGitFilterCurrentFile <CR>", "open lazygit filter current file" },
  },
}

M.diffview = {
  n = {
    ["<leader>gd"] = { "<cmd> DiffviewOpen <CR>", "open diffview" },
    ["<leader>dc"] = { "<cmd> DiffviewClose <CR>", "close diffview" },
  },
}

M.spectre = {
  n = {
    ["<leader>S"] = { "<cmd> Spectre <CR>", "open spectre" },
    ["<leader>sw"] = {
      function()
        require("spectre").open_visual { select_word = true }
      end,
      "search current word",
    },
    ["<leader>sp"] = {
      function()
        require("spectre").open_file_search { select_word = true }
      end,
      "search on current file",
    },
  },
  v = {
    ["<leader>sw"] = {
      function()
        require("spectre").open_visual()
      end,
      "search current word",
    },
  },
}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "truzen focus" },
  },
}

M.workspaces = {
  n = {
    ["<leader>wa"] = {
      "<cmd> WorkspacesAdd <CR>",
      "add workspace folder",
    },

    ["<leader>wr"] = {
      "<cmd> WorkspacesRemove <CR>",
      "remove workspace folder",
    },

    ["<leader>wl"] = {
      "<cmd> Telescope workspaces <CR>",
      "list workspace folders",
    },
  },
}

M.todoComments = {
  n = {
    ["<leader>tl"] = {
      "<cmd> TodoTelescope <CR>",
      "todo list",
    },
  },
}

M.pantran = {
  n = {
    ["<leader>tr"] = {
      "<cmd> Pantran <cr>p",
      "pantran selections translate",
    },
  },
  x = {
    ["<leader>tr"] = {
      "<cmd> Pantran <CR>",
      "pantran motion translate",
    },
  },
  v = {
    ["<leader>tr"] = {
      "y<cmd> Pantran <CR>p",
      "pantran selections translate",
    },
  },
}

M.lazy = {
  n = {
    ["<leader>lz"] = {
      "<cmd> Lazy <cr>",
      "open lazy",
    },
  },
}

return M
