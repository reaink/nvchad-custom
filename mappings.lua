local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
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
    ["<leader>hc"] = { "<cmd> HopChar1 <CR>", "hop char1" },
  }
}

return M
