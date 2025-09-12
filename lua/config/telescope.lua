local builtin = require('telescope.builtin')

-- <leader>ff: Find files in the current working directory using Telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {
    desc = 'Telescope find files'
})

-- <leader>fg: Search for a string in your project using live grep (ripgrep) via Telescope
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {
    desc = 'Telescope live grep'
})

-- <leader>fb: List open buffers using Telescope
vim.keymap.set('n', '<leader>fb', builtin.buffers, {
    desc = 'Telescope buffers'
})

-- <leader>fh: Search Neovim help tags using Telescope
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {
    desc = 'Telescope help tags'
})
