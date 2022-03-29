-- https://github.com/tzachar/cmp-tabnine
-- FIX: Manually install Tabnine when there is an error in Tabnine
--    TabNine is not executable
-- Requires curl
--    ~/.local/share/nvim/site/pack/packer/opt/cmp-tabnine/install.sh

local M = {}
local lspkind = require "lspkind"

return {
   formatting = {
      format = lspkind.cmp_format {
         mode = "symbol", -- show only symbol annotations
         maxwidth = 50,
         before = function(entry, vim_item)
            return vim_item
         end,
      },
      sources = {
         { name = "vsnip" },
         { name = "nvim_lsp" },
         { name = "path" },
         { name = "buffer" },
         { name = "cmdline" },
         { name = "spell" },
         { name = "cmp_tabnine" },
         { name = "vim-dadbod-completion" },
         { name = "luasnip" },
         { name = "nvim_lua" },
      },
   },
}
