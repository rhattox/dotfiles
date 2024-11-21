local O = {}

local cmp = require 'cmp'
O.opts = {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- Use LuaSnip for snippets
    end,
  },

}

return O
