local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  -- ["goolord/alpha-nvim"] = {
  --   disable = false,
  --   override_options = overrides.alpha,
  -- },

   {
    "neovim/nvim-lspconfig",
     dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require("custom.configs.null-ls")
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

-- overrde plugin configs
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
      { "kdheepak/lazygit.nvim" },
    },
    opts = overrides.telescope,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
        {
          "tzachar/cmp-tabnine",
          after = "nvim-cmp",
          run = "./install.sh",
        },
    },
    opts = overrides.cmp
  },
  {
    "NvChad/ui",
    opts = overrides.ui,
  },
  {
    "folke/which-key.nvim",
    enabled = true,
  },

  --------------------------------------------- custom plugins ----------------------------------------------

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
    "yuttie/comfortable-motion.vim",
  },

  -- jump motion
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
    end,
  },

  {
    "ggandor/flit.nvim",
    config = function()
      require("flit").setup()
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- lazygit nvim
  {
    "kdheepak/lazygit.nvim",
  },

  -- multi cursor
  {
    "mg979/vim-visual-multi",
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
      require "custom.plugins.truezen"
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
    config = function()
      require("auto-save").setup()
    end,
  },

  -- markdown plugin
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  -- todo comments plugin
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
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
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      require "custom.plugins.octo"
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
    config = function()
      require "custom.plugins.pantran"
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


  -- ["barrett-ruth/import-cost.nvim"] = {
  --   build = "sh install.sh yarn",
  --   config = function()
  --     require("import-cost").setup {}
  --   end,
  -- },

  {
    "sindrets/diffview.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require "custom.plugins.diffview"
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
}

return plugins
