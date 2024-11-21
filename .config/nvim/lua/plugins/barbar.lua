return {
  {
    "romgrk/barbar.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Make sure you have devicons for buffer icons
    config = function()
      -- Configuration specific to barbar.nvim
      require("bufferline").setup {
        animation = true,
        auto_hide = false,
        -- More settings if necessary, e.g., to customize highlighting, etc.
      }
      -- Other optional configurations:
      vim.o.showtabline = 2 -- Always show tabline
    end
  },

}
