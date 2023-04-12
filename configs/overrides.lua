-- overriding default plugin configs!
local M = {}

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

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "lazy",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",
    "lsp-installer",
    "norg",
    "",
  },
}

M.telescope = {
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
    "prettier",

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

    -- Yaml
    "yaml-language-server",

    -- Json
    "json-lsp",

    -- Docker
    "dockerfile-language-server",
  },
}

return M
