local map = require("core.utils").map

-- Misc
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")

-- Packer
map("n", "<leader>ps", ":PackerSync <CR>")

-- Telescope
map("n", "<leader>fp", ":Telescope media_files <CR>")
map("n", "<leader>te", ":Telescope <CR>")

-- Truezen
map("n", "<leader>ta", ":TZAtaraxis <CR>")
map("n", "<leader>tm", ":TZMinimalist <CR>")
map("n", "<leader>tf", ":TZFocus <CR>")

-- Window
map("n", "<A-Down>", ":res +1 <CR>")
map("n", "<A-Up>", ":res -1 <CR>")
map("n", "<A-Right>", ":vertical resize-1 <CR>")
map("n", "<A-Left>", ":vertical resize+1 <CR>")

-- Hop
map("n", "<leader>hw", ":HopWord <CR>")
map("n", "<leader>hl", ":HopLine <CR>")
map("n", "<leader>hc", ":HopChar1 <CR>")

-- Gitsigns
--- navigation
map("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
map("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })

--- actions
map({ "n", "v" }, "<leader>hs", ":Gitsigns stage_hunk<CR>")
map({ "n", "v" }, "<leader>hr", ":Gitsigns reset_hunk<CR>")
map("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>")
map("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>")
map("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>")
map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>")
map("n", "<leader>hb", '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
map("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>")
map("n", "<leader>hd", "<cmd>Gitsigns diffthis<CR>")
map("n", "<leader>hD", '<cmd>lua require"gitsigns".diffthis("~")<CR>')
map("n", "<leader>td", "<cmd>Gitsigns toggle_deleted<CR>")

--- textObject
map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")

-- Lazygit
map("n", "<leader>lg", ":LazyGit <CR>")

-- NullLs
--- Eslint
map("n", "<leader>ne", ":NullLs eslint<CR>")

-- Switch
map("n", "gs", ":Switch<CR>")
