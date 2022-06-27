return {
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  -- ["jose-elias-alvarez/null-ls.nvim"] = {
  --   after = "nvim-lspconfig",
  --   config = function()
  --     require("custom.plugins.null-ls").setup()
  --   end,
  -- }
  ["natecraddock/workspaces.nvim"] = {
    require("workspaces").setup({
      hooks = {
        open = "NvimTreeOpen",
      }
    })
  }
}
