return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opts = require "configs.cmp",
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
        opts = { lsp = { auto_attach = true } },
      },
    },
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "html-lsp",
        "black",
        "clang-format",
        "codelldb",
        "css-lsp",
        "isort",
        "lua-language-server",
        "prettier",
        "prettierd",
        "rust-analyzer",
        "stylua",
        "typescript-language-server",
      },
    },
  },
  {
    "aznhe21/actions-preview.nvim",
    config = function()
      require "configs.actions_preview"
    end,
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require "configs.fidget"
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
    config = function()
      require "configs.rustaceanvim"
    end,
  },
  {
    "folke/trouble.nvim",
    event = "LspAttach",
    config = function()
      require "configs.trouble"
    end,
  },
  { "mfussenegger/nvim-dap" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
