require "custom.commands"
require "custom.autocmds"

local opt = vim.opt
local g = vim.g

g.toggle_theme_icon = ""
opt.foldcolumn = "1"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
opt.foldmethod = "manual"

opt.list = true
opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"

opt.relativenumber = true
opt.scrolloff = 8
