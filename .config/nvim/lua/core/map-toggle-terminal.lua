local map = vim.keymap.set

map('n', '<A-h>', '<cmd>ToggleTerm size=10 direction=horizontal<CR>', { noremap = true, silent = true })
map('n', '<A-v>', '<cmd>ToggleTerm size=50 direction=vertical<CR>', { noremap = true, silent = true })
map('n', '<A-f>', '<cmd>ToggleTerm size=10 direction=float<CR>', { noremap = true, silent = true })
