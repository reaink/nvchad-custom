-- overriding default plugin configs!

local M = {}

-- ui config
M.ui = {
  statusline = {
    separator_style = "block",
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
}

M.nvimtree = {
  filters = {
    custom = { "node_modules" },
  },

  git = {
    enable = true,
    ignore = false,
  },

  -- view = {
  --   adaptive_size = false,
  -- },

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

local function button(sc, txt, keybind)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 5,
    width = 36,
    align_shortcut = "right",
    hl = "AlphaButtons",
  }

  if keybind then
    opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
  end

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true) or ""
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

M.alpha = {
  disabled = false,
  header = {
    val = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄ ",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █ ",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █ ",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
    },
  },
  buttons = {
    val = {
      button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
      button("SPC f o", "  Recent File  ", ":Telescope oldfiles<CR>"),
      button("SPC f w", "  Find Word  ", ":Telescope live_grep<CR>"),
      button("SPC b m", "  Bookmarks  ", ":Telescope marks<CR>"),
      button("SPC t h", "  Themes  ", ":Telescope themes<CR>"),
      button("SPC e s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
    },
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
