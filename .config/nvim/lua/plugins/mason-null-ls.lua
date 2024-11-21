return {
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    opts = function()
      return require("config.mason-null-ls").opts
    end
    ,
    config = function(_, opts)
      require("mason-null-ls").setup(opts)
    end,
  }
}
