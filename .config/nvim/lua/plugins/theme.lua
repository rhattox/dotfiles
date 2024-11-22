return {
  {
    "rebelot/kanagawa.nvim",
    opts = function()
      return require("config.theme").opts
    end,
    config = function(_, opts)
      require("kanagawa").setup(opts)
      require("kanagawa").load("wave")
    end,
  },

}
