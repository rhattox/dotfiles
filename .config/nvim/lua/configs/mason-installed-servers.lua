require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		-- lsps
		"lua_ls",
		"helm_ls",
		"yamlls",
		-- formatters
    "java_language_server",
	},
	automatic_installation = true,
})
