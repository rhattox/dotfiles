return {
  {
    "akinsho/toggleterm.nvim",
    opts = function()
      return require("config.toggle-term").opts
    end,
    config = function(_, opts)
      require("toggleterm").setup(opts)
    end,
  },
}
