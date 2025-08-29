-- Load custom key mappings
require("config.keymaps")

-- Load general Neovim options/settings
require("config.options")

-- Load lazy.nvim plugin manager and plugin specifications
require("config.lazy")

-- Set the colorscheme to tokyonight-night
vim.cmd("colorscheme tokyonight-night")

-- Load Telescope custom configuration
require("config.telescope")

-- Load nvim-tree custom configuration
require("config.tree")

-- Load Treesitter custom configuration
require("config.treesitter")