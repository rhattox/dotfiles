return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      return require("config.mason-lspconfig")
    end,
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
    end,
  },
}
