-- Disable netrw at the very start of your init.lua to avoid conflicts with nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Optionally enable 24-bit colour in the terminal
vim.opt.termguicolors = true

-- nvim-tree setup with custom options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive" -- Sort files and folders case-sensitively
    },
    view = {
        width = 30 -- Set the width of the nvim-tree window
    },
    renderer = {
        group_empty = true -- Group empty folders together
    },
    filters = {
        dotfiles = false -- Show dotfiles in the file explorer
    }
})
