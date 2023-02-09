local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {

  -- HTML
  "html",

  -- CSS
  "cssls",
  "cssmodules_ls",

  -- TypeScript, JavaScript
  "tsserver",
  -- "tailwindcss", -- commented because it is slow

  -- Rust
  "rust_analyzer",

  -- Go
  "gopls",

  -- Yaml
  "yamlls",

  -- PHP
  "intelephense",

  -- JSON
  "jsonls",

  -- Docker
  "dockerls",

  -- C
  "clangd",

  -- shell
  "bashls",

  -- Python
  "pyright",
}

-- capabilities.textDocument.foldingRange = {
--   dynamicRegistration = false,
--   lineFoldingOnly = true,
-- }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig["tailwindcss"].setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "typescriptreact" },
-- }

lspconfig.emmet_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "html",
    "typescriptreact",
    "javascriptreact",
    "css",
    "sass",
    "scss",
    "less",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
}

-- require("ufo").setup()
