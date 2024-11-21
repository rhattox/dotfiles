local map = vim.keymap.set

map("n", "<tab>", "<cmd>:bnext<CR>", { desc = "buffer goto next" })
map("n", "<S-tab>", "<cmd>:bprev<CR>", { desc = "buffer goto prev" })
map("n", "<S-q>", "<cmd>:BufferClose<CR>", { desc = "Close Current Buffer" })
