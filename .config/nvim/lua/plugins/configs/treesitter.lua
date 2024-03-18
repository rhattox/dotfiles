local options = {
	ensure_installed = {
		-- defaults
		"vim",
		"lua",
		-- web dev
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"json",
		-- "vue", "svelte",
		"java",
		-- low level
		"c",
		"zig",
    "terraform",
    "hcl",
    "python"
	},

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enable = true },
}

return options
