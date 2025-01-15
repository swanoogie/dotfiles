return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  -- Custom
  {
    require "configs.neogit",
  },
  {
    require "configs.linting",
  },
  {
    require "configs.diffview",
  },
  {
    require "configs.gitconfig",
  },
  {
    require "configs.copilot",
  },
  {
    require "configs.nvim-cmp",
  },
}
