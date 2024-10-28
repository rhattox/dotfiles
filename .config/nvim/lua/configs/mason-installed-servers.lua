require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"helm_ls",
		"yamlls",
    "jdtls",
    "ansiblels",
	},
	automatic_installation = true,
})
