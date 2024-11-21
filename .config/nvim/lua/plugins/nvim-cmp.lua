return {
  {
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    opts = function()
      return require("config.nvim-cmp").opts
    end,
    config = function(_, opts)
      require("cmp").setup(opts)
    end

  },
  {
    'hrsh7th/cmp-buffer', -- Buffer completion source
  },
  {
    'hrsh7th/cmp-path', -- Path completion source
  },
  {
    'hrsh7th/cmp-nvim-lua', -- LSP source for nvim-cmp
  },
  {
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
  },
  {
    'saadparwaiz1/cmp_luasnip', -- LuaSnip source for nvim-cmp
  },
  {
    'hrsh7th/cmp-cmdline', -- Command line completion
  },
  {
    'L3MON4D3/LuaSnip' -- Snippet engine
  },
}
