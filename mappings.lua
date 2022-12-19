local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },

    ["<leader>cd"] = { "<cmd> cd %:p:h <CR> <cmd> pwd <CR>", "jump to current dir to pwd" },
    ["<leader>gg"] = { "<cmd> LazyGit <CR><CR>", "open lazygit" },

    ["<A-Down>"] = { "<cmd> res +1 <CR>", "resize window +1" },
    ["<A-Up>"] = { "<cmd> res -1 <CR>", "resize window -1" },
    ["<A-Right>"] = { "<cmd> vertical resize -1 <CR>", "resize window vertical -1" },
    ["<A-Left>"] = { "<cmd> vertical resize +1 <CR>", "resize window vertical +1" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
  },

  t = {
    ["<C-;>"] = { "<C-\\><C-N>", "escape terminal mode" },
  },
}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "truzen focus" },
  },
}


M.shade = {
  n = {
    ["<leader>s"] = {
      function()
        require("shade").toggle()
      end,

      "toggle shade.nvim",
    },
  },
}

M.hop = {
  n = {
    ["<leader>hw"] = { "<cmd> HopWord <CR>", "hop word" },
    ["<leader>hl"] = { "<cmd> HopLine <CR>", "hop line" },
    ["<leader>hc"] = { "<cmd> HopChar1 <CR>", "hop char1" },
  },
}

return M
