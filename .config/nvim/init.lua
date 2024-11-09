vim.g.base46_cache = vim.fn.stdpath("data") .. "/nvchad/base46/"


-- Set textwidth to 80 for text files
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
	local repo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath })
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require("configs.lazy")

-- load plugins
require("lazy").setup({
	{
		import = "nvchad.plugins",
		lazy = false,
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile", "BufEnter" },
	},
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require("nvchad.options")
require("nvchad.autocmds")
require("chadrc")
vim.schedule(function()
	require("nvchad.mappings")
end)
require("configs.mason-installed-servers")
require("configs.lspconfig")
require("nvim-surround").setup()

vim.diagnostic.config({
  severity_sort = true,
  virtual_text = false, -- Turn off virtual text for diagnostics
  signs = true, -- Turn off signs for diagnostics
  underline = false, -- Turn off underlines for diagnostics
  update_in_insert = true,
})

vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focus=false})
  end
})
