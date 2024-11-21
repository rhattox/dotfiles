--------------------- Core -----------------------
require("core.options")
require("core.mappings")
--------------------- Lazy -----------------------
require("lazy.main")
require("lazy.setup")

--------------------- Mason Configs -----------------------
require("mason").setup()
-- Loads configurations from Mason LSP
local mason_lsp_opts = require("config.mason-lspconfig").opts
require("mason-lspconfig").setup(mason_lsp_opts)

--------------------- Nvim Tree Maps ---------------------
require("core.map-nvim-tree")

--------------------- Bar Bar Maps ---------------------
require("core.map-barbar")

--------------------- ToggleTerm Maps ---------------------
require("core.map-toggle-terminal")

--------------------- Telescope Maps ---------------------
require("core.map-telescope")

--------------------- LSP Maps ---------------------
require("core.map-lsp")
