return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    event = "BufReadPre",
    sources = function()
      return require("config.null-ls").sources
    end,
    config = function(_, sources)
      require("null-ls").setup(sources)
    end,
  },
}
