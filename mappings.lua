local M = {}

local presentWorkspaces, workspaces = pcall(require, "workspaces")

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },

    ["<leader>cd"] = { "<cmd> cd %:p:h <CR> <cmd> pwd <CR>", "jump to current dir to pwd" },
    ["<leader>ca"] = { "<cmd> CodeActionMenu <CR>", "code action menu" },

    ["<leader>so"] = { "<cmd> SymbolsOutline <CR>", "symbols outline" },

    ["<A-Down>"] = { "<cmd> res +1 <CR>", "resize window +1" },
    ["<A-Up>"] = { "<cmd> res -1 <CR>", "resize window -1" },
    ["<A-Right>"] = { "<cmd> vertical resize -1 <CR>", "resize window vertical -1" },
    ["<A-Left>"] = { "<cmd> vertical resize +1 <CR>", "resize window vertical +1" },

    ["<A-j>"] = { "<cmd> m+ <CR>", "move line ↓" },
    ["<A-k>"] = { "<cmd> m-2 <CR>", "move line ↑" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
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

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "truzen focus" },
  },
}

M.hop = {
  n = {
    ["<leader>hw"] = { "<cmd> HopWord <CR>", "hop word" },
    ["<leader>hl"] = { "<cmd> HopLine <CR>", "hop line" },
    ["<leader>hc"] = { "<cmd> HopWordCurrentLine <CR>", "hop word current line" },
    ["<leader>hn"] = { "<cmd> HopWordAC <CR>", "hop word next" },
    ["<leader>hp"] = { "<cmd> HopPattern <CR>", "hop pattern" },
    ["<leader>hs"] = { "<cmd> HopChar2 <CR>", "hop search char2" },
  },
}

M.workspaces = {
  n = {
    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
        if presentWorkspaces then
          workspaces.add()
        end
      end,
      "add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
        if presentWorkspaces then
          workspaces.remove()
        end
      end,
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

M.ctrlsf = {
  n = {
    ["<C-f>o"] = {
      "<cmd> CtrlSF <CR>",
      "CtrlSF open",
    },
    ["<C-f>f"] = {
      "<cmd> CtrlSFFocus <CR>",
      "CtrlSF focus",
    },
    ["<C-f>c"] = {
      "<cmd> CtrlSFClose <CR>",
      "CtrlSF close",
    },
    ["<C-f>t"] = {
      "<cmd> CtrlSFToggle <CR>",
      "CtrlSF toggle",
    },
  },
  v = {
    ["<C-f>o"] = {
      "<Plug>CtrlSFVwordExec",
      "CtrlSF open",
    },
  },
}

return M
