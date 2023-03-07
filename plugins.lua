local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  -- lsp config
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      {
        "simrat39/rust-tools.nvim",
        config = function()
          require("rust-tools").setup {
            tools = {
              inlay_hints = {
                auto = false,
              },
            },
          }
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  -- overrides defaults
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = overrides.blankline,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
    opts = overrides.telescope,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "tzachar/cmp-tabnine",
        build = "./install.sh",
      },
    },
    opts = overrides.cmp,
  },
  {
    "NvChad/ui",
    opts = overrides.ui,
  },
  {
    "folke/which-key.nvim",
    enabled = true,
  },
  -- add custom plugins
  {
    "natecraddock/sessions.nvim",
    config = function()
      require("sessions").setup {
        events = { "WinEnter", "VimLeavePre" },
        session_filepath = vim.fn.stdpath "data" .. "/sessions",
        absolute = true,
      }
    end,
  },
  -- workspaces
  {
    "natecraddock/workspaces.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-tree.lua",
    },
    config = function()
      require("workspaces").setup {
        hooks = {
          open = { "NvimTreeOpen", "Telescope find_files" },
        },
      }
    end,
  },

  -- autoclose tags in html, jsx only
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascriptreact" },
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- Better quickfix
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
  },

  {
    "junegunn/fzf",
    build = function()
      vim.fn["fzf#install"]()
    end,
  },

  -- scroll smooth
  {
    "declancm/cinnamon.nvim",
    keys = {
      { "<C-u>" },
      { "<C-d>" },
      { "<C-f>" },
      { "<C-b>" },
      { "zz" },
      { "zt" },
      { "zb" },
    },
    config = function()
      require("cinnamon").setup {
        default_keymaps = true,
        extra_keymaps = true,
      }
    end,
  },

  -- jump motion
  {
    "ggandor/leap.nvim",
    keys = {
      { "s", mode = { "n", "x" }, desc = "Leap forward to" },
      { "S", mode = { "n", "x" }, desc = "Leap backward to" },
      { "gs", mode = { "n", "x" }, desc = "Leap from windows" },
      { "cx", mode = { "n", "x" }, desc = "Leap change forward to" },
      { "cX", mode = { "n", "x" }, desc = "Leap change backward to" },
      { "dx", mode = { "n", "x" }, desc = "Leap delete forward to" },
      { "dX", mode = { "n", "x" }, desc = "Leap delete backward to" },
    },
    config = function()
      require("leap").add_default_mappings()
    end,
  },

  {
    "ggandor/flit.nvim",
    keys = {
      { "f", mode = { "n" }, desc = "Flit forward to" },
      { "F", mode = { "n" }, desc = "Flit backward to" },
    },
    config = function()
      require("flit").setup()
    end,
  },

  {
    "kylechui/nvim-surround",
    event = "BufEnter",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- lazygit nvim
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit", "LazyGitFilterCurrentFile" },
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
  },

  -- multi cursor
  {
    "mg979/vim-visual-multi",
    keys = {
      { "<C-n>", mode = { "n", "x" } },
    },
  },

  -- distraction free modes
  {
    "Pocco81/TrueZen.nvim",
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.configs.truezen"
    end,
  },

  -- get highlight group under cursor
  {
    "nvim-treesitter/playground",
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },

  -- autosave
  {
    "Pocco81/auto-save.nvim",
    cmd = { "ASToggle" },
    config = function()
      require("auto-save").setup()
    end,
  },

  -- markdown plugin
  {

    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  -- todo comments plugin
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    cmd = { "TodoTelescope" },
    event = { "BufEnter" },
    config = function()
      require("todo-comments").setup()
    end,
  },

  -- automatically highlighting other uses of the word under the cursor
  {
    "RRethy/vim-illuminate",
  },

  -- github plugin
  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "custom.configs.octo"
    end,
  },

  {
    "petertriho/cmp-git",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("cmp_git").setup()
    end,
  },

  -- translate plugin
  {
    "potamides/pantran.nvim",
    cmd = { "Pantran" },
    config = function()
      require "custom.configs.pantran"
    end,
  },

  -- Pop-up code action menu
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
  },

  {
    "dyng/ctrlsf.vim",
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function()
      require("symbols-outline").setup()
    end,
  },

  {
    "lvimuser/lsp-inlayhints.nvim",
    config = function()
      require("lsp-inlayhints").setup()
    end,
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose" },
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require "custom.configs.diffview"
    end,
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require("zen-mode").setup {
        window = {
          width = vim.g.zenmode, -- width will be 85% of the editor width
        },
      }
    end,
  },

  {
    "dpayne/CodeGPT.nvim",
    cmd = "Chat",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },
}

return plugins
