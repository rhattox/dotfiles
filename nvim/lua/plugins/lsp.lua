-- Replace/add LSPs as you like
local servers = {
  "lua_ls",      -- Lua
}

-- Setup mason
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = servers, -- 👈 This auto-installs them
    automatic_installation = true,
})

-- This capability connects LSP with nvim-cmp (autocomplete)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup each LSP
local lspconfig = require("lspconfig")

for _, server in ipairs(servers) do
  lspconfig[server].setup({
    capabilities = capabilities,
  })
end


print("Loaded LSP Configuration!")
