return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return require("config.nvim-treesitter").opts
    end,
    setup = function(_, opts)
      require("nvim-treesitter").setup(opts)
    end
  },
}
