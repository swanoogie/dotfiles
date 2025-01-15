return {
  "NeogitOrg/neogit",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
    -- or we can use telescope
    -- "nvim-telescope/telescope.nvim"
  },
  config = function()
    local neogit = require "neogit"
    neogit.setup {
      integrations = {
        telescope = true,
        diffview = true,
      },
    }
    dofile(vim.g.base46_cache .. "git")
    dofile(vim.g.base46_cache .. "neogit")
  end,
}
