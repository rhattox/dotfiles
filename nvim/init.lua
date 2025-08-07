-- Load Editor configuration
require("config.options")  
-- Install Lazy.nvim plugin manager 
-- It's the entrypoint plugin that will coordinate all other plugins at lua.config.lazy
require("plugins.lazy")
-- Load Lazy
require("config.lazy")
-- Load LSP 
require("plugins.lsp")
