-- overriding default plugin configs!
local M = {}

M.cmp = {
  sources = {
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = "cmp_tabnine" },
  },
}

M.treesitter = {
  ensure_installed = {
    -- HTML CSS
    "html",
    "css",
    "scss",

    -- TypeScript, JavaScript
    "javascript",
    "typescript",
    "tsx",
    -- "tailwindcss-language-server",

    -- Rust
    "rust",
    -- Go
    "go",
    "gomod",
    -- Vim
    "vim",
    "lua",

    "php",
    "json",
    "markdown",
    "markdown_inline",
    "yaml",
    "dockerfile",
    "sql",
    "toml",
    "c",
    "bash",
    "norg",
    "python",
    "graphql",
  },
  indent = {
    enable = true,
  },
}

M.nvimtree = {
  filters = {
    custom = { "node_modules" },
  },

  git = {
    enable = true,
    ignore = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.gitsigns = {
  signs = {
    add = { hl = "DiffAdd", text = "+", numhl = "GitSignsAddNr" },
    change = { hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr" },
    delete = { hl = "DiffDelete", text = "-", numhl = "GitSignsDeleteNr" },
    topdelete = { hl = "DiffDelete", text = "-", numhl = "GitSignsDeleteNr" },
  },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "norg",
    "",
  },
}

M.telescope = {
  defaults = {
    prompt_prefix = "",
  },
  extensions_list = { "themes", "terms", "lazygit", "workspaces" },
}

M.mason = {
  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },
  ensure_installed = {
    -- Lua
    "lua-language-server",
    "stylua",

    -- HTML CSS
    "css-lsp",
    "html-lsp",
    "emmet-ls",
    "cssmodules-language-server",
    "tailwindcss-language-server",

    -- TypeScript, JavaScript
    "deno",
    "typescript-language-server",
    "eslint_d",

    -- Rust
    "rust-analyzer",
    "rustfmt",

    -- Go
    "gopls",
    "goimports",

    --Python
    "pyright",
    "pylama",

    -- Shell
    "shfmt",
    "shellcheck",

    -- PHP
    "intelephense",
    "php-cs-fixer",
    "phpcs",

    -- Yaml
    "yaml-language-server",

    -- Json
    "json-lsp",

    -- Docker
    "dockerfile-language-server",
  },
}

return M
