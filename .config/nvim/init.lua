--------------------- CORE PLUGINS -----------------------
require("lazy.main")
require("lazy.setup")
require("core.options")
--------------------- Mason Plugins -----------------------

require("mason").setup()
-- Loads configurations from Mason LSP
local mason_lsp_opts = require("config.mason-lspconfig").opts
require("mason-lspconfig").setup(mason_lsp_opts)
