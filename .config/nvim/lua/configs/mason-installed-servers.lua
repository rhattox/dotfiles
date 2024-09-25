require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		-- lsps
		"lua_ls",
		"helm_ls",
		"yamlls",
    "jdtls",
    "ansiblels"
		-- formatters
	},
	automatic_installation = true,
})
