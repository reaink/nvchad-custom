local overrides = require "custom.plugins.overrides"

return {

  ----------------------------------------- default plugins ------------------------------------------

  ["folke/which-key.nvim"] = {
    disable = false,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- override default configs
  ["nvim-tree/nvim-tree.lua"] = { override_options = overrides.nvimtree },
  ["hrsh7th/nvim-cmp"] = { override_options = overrides.cmp },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },
  ["lukas-reineke/indent-blankline.nvim"] = { override_options = overrides.blankline },
  ["williamboman/mason.nvim"] = { override_options = overrides.mason },
  ["nvim-telescope/telescope.nvim"] = {
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "kdheepak/lazygit.nvim" },
    },
    override_options = overrides.telescope,
  },

  ["NvChad/ui"] = {
    override_options = overrides.ui,
  },

  --------------------------------------------- custom plugins ----------------------------------------------

  ["natecraddock/sessions.nvim"] = {
    config = function()
      require("sessions").setup {
        events = { "WinEnter", "VimLeavePre" },
        session_filepath = vim.fn.stdpath "data" .. "/sessions",
        absolute = true,
      }
    end,
  },
  -- workspaces
  ["natecraddock/workspaces.nvim"] = {
    config = function()
      require("workspaces").setup {
        hooks = {
          open = { "NvimTreeOpen", "Telescope find_files" },
        },
      }
    end,
  },

  -- autoclose tags in html, jsx only
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  -- Better quickfix
  ["kevinhwang91/nvim-bqf"] = {
    ft = "qf",
  },

  ["junegunn/fzf"] = {
    run = function()
      vim.fn["fzf#install"]()
    end,
  },

  -- scroll smooth
  ["karb94/neoscroll.nvim"] = {
    config = function()
      require("neoscroll").setup()
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- jump motion
  ["phaazon/hop.nvim"] = {
    branch = "v2",
    config = function()
      local present, hop = pcall(require, "hop")

      if present then
        hop.setup { keys = "etovxqpdygfblzhckisuran" }
      end
    end,
  },

  ["kylechui/nvim-surround"] = {
    tag = "*",
    config = function()
      local present, surround = pcall(require, "nvim-surround")

      if present then
        surround.setup()
      end
    end,
  },

  -- lazygit nvim
  ["kdheepak/lazygit.nvim"] = {},

  -- openai code
  ["dense-analysis/neural"] = {
    config = function()
      require("neural").setup {
        open_ai = {
          api_key = "<YOUR OPENAI API SECRET KEY>",
        },
        ui = {
          icon = " ",
        },
      }
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "ElPiloto/significant.nvim",
    },
  },

  ["mg979/vim-visual-multi"] = {},

  -- distraction free modes
  ["Pocco81/TrueZen.nvim"] = {
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
  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },

  -- autosave
  ["Pocco81/auto-save.nvim"] = {
    config = function()
      require("auto-save").setup()
    end,
  },

  -- markdown plugin
  ["iamcco/markdown-preview.nvim"] = {
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  -- todo comments plugin
  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end,
  },

  -- automatically highlighting other uses of the word under the cursor
  ["RRethy/vim-illuminate"] = {},

  -- github plugin
  ["pwntester/octo.nvim"] = {
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "kyazdani42/nvim-web-devicons",
    },
    after = "telescope.nvim",
    config = function()
      require("octo").setup {
        ssh_aliases = {
          ["github-rea"] = "github.com",
          ["github-work"] = "github.com",
        },
      }
    end,
  },

  ["petertriho/cmp-git"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("cmp_git").setup()
    end,
  },

  -- translate plugin
  ["potamides/pantran.nvim"] = {
    config = function()
      require("pantran").setup {
        default_engine = "google",
        engines = {
          google = {
            default_target = "zh-CN",
            fallback = {
              default_target = "zh-CN",
            },
          },
        },
      }
    end,
  },

  -- Pop-up code action menu
  ["weilbith/nvim-code-action-menu"] = {
    cmd = "CodeActionMenu",
  },

  ["dyng/ctrlsf.vim"] = {},

  ["simrat39/symbols-outline.nvim"] = {
    config = function()
      require("symbols-outline").setup()
    end,
  },

  ["folke/zen-mode.nvim"] = {
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
