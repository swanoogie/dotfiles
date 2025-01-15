-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "ts_ls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Customize to run ts_ls when found "package.json" file only
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  root_dir = lspconfig.util.root_pattern "package.json",
  single_file_support = false
}

-- Customize to run denols when found deno.json or deno.jsonc
lspconfig.denols.setup {
  on_attach = nvlsp.on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
}
