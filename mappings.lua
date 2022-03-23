local map = require("core.utils").map

-- misc
map("n", "H", "^")
map("n", "L", "$")

-- telescope
map("n", "<leader>fp", ":Telescope media_files <CR>")
map("n", "<leader>te", ":Telescope <CR>")

-- truezen
map("n", "<leader>ta", ":TZAtaraxis <CR>")
map("n", "<leader>tm", ":TZMinimalist <CR>")
map("n", "<leader>tf", ":TZFocus <CR>")

-- window
--   resize
map("n", "<A-k>", ":res +1 <CR>")
map("n", "<A-j>", ":res -1 <CR>")
map("n", "<A-h>", ":vertical resize-1 <CR>")
map("n", "<A-l>", ":vertical resize+1 <CR>")

-- hop
map("n", "<leader>hw", ":HopWord <CR>")
map("n", "<leader>hl", ":HopLine <CR>")
map("n", "<leader>hc", ":HopChar1 <CR>")

-- gitsigns
-- Navigation
map("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
map("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })

-- Actions
map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>")
map("v", "<leader>hs", ":Gitsigns stage_hunk<CR>")
map("n", "<leader>hr", ":Gitsigns reset_hunk<CR>")
map("v", "<leader>hr", ":Gitsigns reset_hunk<CR>")
map("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>")
map("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>")
map("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>")
map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>")
map("n", "<leader>hb", '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
map("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>")
map("n", "<leader>hd", "<cmd>Gitsigns diffthis<CR>")
map("n", "<leader>hD", '<cmd>lua require"gitsigns".diffthis("~")<CR>')
map("n", "<leader>td", "<cmd>Gitsigns toggle_deleted<CR>")

-- Text object
map("o", "ih", ":<C-U>Gitsigns select_hunk<CR>")
map("x", "ih", ":<C-U>Gitsigns select_hunk<CR>")
