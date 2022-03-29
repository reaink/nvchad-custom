return {
   { "williamboman/nvim-lsp-installer" },
   { "ellisonleao/glow.nvim", cmd = "Glow" },
   { "yianwillis/vimcdoc", event = { "BufRead", "BufNewFile" } },
   -- lua dependency
   { "nvim-lua/plenary.nvim", event = { "BufRead", "BufNewFile" } },
   -- character lookup
   { "BurntSushi/ripgrep", event = { "BufRead", "BufNewFile" } },
   {
      "tami5/lspsaga.nvim",
      load_file = true,
      after = "nvim-lsp-installer",
      config = function()
         require("lspsaga").setup()
      end,
   },
   { "sharkdp/fd", event = { "BufRead", "BufNewFile" } },
   {
      "j-hui/fidget.nvim",
      load_file = true,
      after = "nvim-lsp-installer",
      config = function()
         require("fidget").setup {
            window = {
               -- window transparent
               blend = 0,
            },
         }
      end,
   },
   {
      "windwp/nvim-ts-autotag",
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      config = function()
         require("nvim-ts-autotag").setup()
      end,
   },
   {
      "jose-elias-alvarez/null-ls.nvim",
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.configs.null-ls").setup()
      end,
   },
   { "AndrewRadev/switch.vim" },
   { "mg979/vim-visual-multi", load_file = true, event = { "BufRead", "BufNewFile" } },
   {
      "phaazon/hop.nvim",
      load_file = true,
      cmd = { "HopWord", "HopLine", "HopChar1", "HopChar2" },
      config = function()
         require("hop").setup()
      end,
   },
   {
      "karb94/neoscroll.nvim",
      opt = true,
      config = function()
         require("neoscroll").setup()
      end,
      -- lazy loading
      setup = function()
         require("core.utils").packer_lazy_load "neoscroll.nvim"
      end,
   },
   -- git copilot is autocompleted
   { "github/copilot.vim", load_file = true, event = "InsertCharPre" },
   -- git plugin
   { "nvim-pack/nvim-spectre", load_file = true, after = { "ripgrep", "plenary.nvim" } },
   { "davidgranstrom/nvim-markdown-preview", load_file = true, ft = "markdown" },
   { "ethanholz/nvim-lastplace", load_file = true, event = { "BufRead", "BufNewFile" } },
   -- spell checker
   { "lewis6991/spellsitter.nvim", load_file = true, event = { "BufRead", "BufNewFile" } },
   {
      "nvim-telescope/telescope-media-files.nvim",
      after = "telescope.nvim",
      config = function()
         require("telescope").setup {
            extensions = {
               media_files = {
                  filetypes = { "png", "webp", "jpg", "jpeg" },
               },
               -- fd is needed
            },
         }
         require("telescope").load_extension "media_files"
      end,
   },
   {
      "Pocco81/TrueZen.nvim",
      cmd = {
         "TZAtaraxis",
         "TZMinimalist",
         "TZFocus",
      },
      config = function()
         require "custom.plugins.configs.truezen"
      end,
   },
   -- vsnip engine for code snippet support
   { "hrsh7th/vim-vsnip", event = { "InsertEnter", "CmdlineEnter" } },
   { "hrsh7th/vim-vsnip-integ", event = { "InsertEnter", "CmdlineEnter" } },
   -- adds a vscode-like icon for completion
   { "onsails/lspkind-nvim", event = { "InsertEnter", "CmdlineEnter" } },
   -- source of code snippets for vsnip
   { "hrsh7th/cmp-vsnip", after = "nvim-cmp" },
   -- command completion
   { "hrsh7th/cmp-cmdline", after = "nvim-cmp" },
   -- sql completion
   { "kristijanhusak/vim-dadbod-completion", after = "nvim-cmp" },
   -- spelling suggestions
   { "f3fora/cmp-spell", after = "nvim-cmp" },
   -- query the startup time
   { "dstein64/vim-startuptime", cmd = "StartupTime" },
   { "tzachar/cmp-tabnine", run = "./install.sh", after = "nvim-cmp" },
   {
      "natecraddock/sessions.nvim",
      cmd = { "SessionsSave", "SessionsLoad", "SessionsStop" },
      config = function()
         require("sessions").setup()
      end,
   },
   {
      "ur4ltz/surround.nvim",
      load_file = true,
      event = { "BufRead", "BufNewFile" },
      config = function()
         require("surround").setup {
            mappings_style = "surround",
            space_on_closing_char = true,
         }
      end,
   },
   {
      "natecraddock/workspaces.nvim",
      cmd = { "WorkspacesAdd", "WorkspacesRemove", "WorkspacesList", "WorkspacesOpen" },
      config = function()
         require("workspaces").setup {
            hooks = {
               open = { "Telescope find_files" },
            },
         }
      end,
   },
   {
      "gaelph/logsitter.nvim",
      requires = { "nvim-treesitter/nvim-treesitter" },
      config = function()
         require("logsitter").log(file_type)
      end,
   },
   {
      "neoclide/coc.nvim",
      branch = "release",
   },
   {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
         require("todo-comments").setup()
      end,
   },
   {
      "kdheepak/lazygit.nvim",
   },
}
