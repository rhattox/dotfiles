return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
    opts = function()
      return require("config.which-key").opts
    end,
    config = function(_, opts)
      require("which-key").setup(opts)
    end,
  },
}
