local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.docker_compose_langserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
