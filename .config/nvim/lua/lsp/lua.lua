require("mason").setup()
require("mason-lspconfig").setup()

local extraLspConfig = require("core.map-lsp")

require("lspconfig").lua_ls.setup({
  on_attach = extraLspConfig.on_attach,
  capabilities = extraLspConfig.capabilities,
  on_init = extraLspConfig.on_init,

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
