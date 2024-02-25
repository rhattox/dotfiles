local plugins = {
	{
		"mhartington/formatter.nvim",
		event = "VeryLazy",
		opts = function()
			return require("custom.configs.formatter")
		end,
	},
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"eslint-lsp",
				"js-debug-adapter",
				"prettier",
				"typescript-language-server",
				"lua-language-server",
				"java-language-server",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
}
return plugins
