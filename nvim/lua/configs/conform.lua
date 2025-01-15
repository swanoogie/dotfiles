local options = {
  formatters_by_ft = {
    typescript = { "prettier" },
    javascript = { "prettier" },
    typescriptreact = { "prettier" },
    javascriptreact = { "prettier" },

    rust = { "rustfmt" },

    css = { "prettier" },
    html = { "prettier" },
    scss = { "prettier" },
    less = { "prettier" },

    lua = { "stylua" },

    json = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
    async = false,
  },
}

return options
