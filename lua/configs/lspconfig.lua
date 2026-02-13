local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local servers = { "clangd", "lua_ls", "rust_analyzer" }

for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  })
  vim.lsp.enable(lsp)
end
