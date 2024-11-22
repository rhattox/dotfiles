--
-- CMP + LSP Config
--

local lspconfig = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['jdtls'].setup {
  cmd = { 'jdtls' },
  root_dir = lspconfig.util.root_pattern('pom.xml'),
  capabilities = capabilities
}
