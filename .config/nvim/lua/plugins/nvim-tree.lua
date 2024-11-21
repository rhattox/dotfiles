return {
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" }, -- Lazy load when these commands are used
    event = "BufWinEnter",                       -- Or specify an appropriate event
    dependencies = {
      "nvim-tree/nvim-web-devicons",             -- Optional, for file icons
    },
    opts = function()
      return require("config.nvim-tree").opts
    end,
    config = function(_, opts)
      require("nvim-tree").setup(opts)
    end,
  },
}
