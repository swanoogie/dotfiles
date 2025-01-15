return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      typescript = { "eslint_d" },
      javascript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      json = { "jsonlint" },
      html = { "htmlhint" },
      css = { "stylelint" },
      scss = { "stylelint" },
      less = { "stylelint" },
      lua = { "luacheck" }
    }
  end
}
