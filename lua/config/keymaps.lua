-- Clear search highlights with <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {
    desc = "Remove search highlights"
})

-- Exit terminal mode with <Esc><Esc>
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", {
    desc = "Exit terminal mode"
})

-- Window navigation shortcuts:
-- Move focus to the left window with <C-h>
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", {
    desc = "Move focus to the left window"
})
-- Move focus to the right window with <C-l>
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {
    desc = "Move focus to the right window"
})
-- Move focus to the lower window with <C-j>
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", {
    desc = "Move focus to the lower window"
})
-- Move focus to the upper window with <C-k>
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", {
    desc = "Move focus to the upper window"
})

-- Window splitting shortcuts:
-- Vertical split with <leader>wv>
vim.keymap.set("n", "<leader>wv", ":vsplit<cr>", {
    desc = "[W]indow Split [V]ertical"
})
-- Horizontal split with <leader>wh>
vim.keymap.set("n", "<leader>wh", ":split<cr>", {
    desc = "[W]indow Split [H]orizontal"
})

-- Stay in indent mode after shifting in visual mode:
-- Indent left and stay in visual mode with <
vim.keymap.set("v", "<", "<gv", {
    desc = "Indent left in visual mode"
})
-- Indent right and stay in visual mode with >
vim.keymap.set("v", ">", ">gv", {
    desc = "Indent right in visual mode"
})

-- Open netrw file explorer with <C-b>
vim.keymap.set("n", "<C-b>", ":Ex<CR>", {
    desc = "Open NETrw"
})

-- Format the current buffer with LSP using <leader>f
vim.keymap.set("n", "<space>f", "<cmd>lua vim.lsp.buf.format()<CR>", opts)