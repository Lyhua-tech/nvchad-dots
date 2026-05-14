local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- 1. Standard servers
local servers = { "html", "cssls", "ts_ls", "tailwindcss:" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
-- 3. Vue (Volar) Setup
local ok, mason_registry = pcall(require, "mason-registry")
