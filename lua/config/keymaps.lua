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

-- Stay in indent mode after shifting in visual mode:
-- Indent left and stay in visual mode with <
vim.keymap.set("v", "<", "<gv", {
    desc = "Indent left in visual mode"
})
-- Indent right and stay in visual mode with >
vim.keymap.set("v", ">", ">gv", {
    desc = "Indent right in visual mode"
})

-- Open NvimTree with <C-b>
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", {
    desc = "Toggle file explorer"
})


vim.keymap.set("n", "K", "")
vim.keymap.set("n", "J", "")
vim.keymap.set("n", "L", "<END>")
vim.keymap.set("n", "H", "<HOME>")

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "General Save file" })
vim.keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "General Copy whole file" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Using the new keymap API (Neovim >= 0.7)
vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<Cmd>ToggleTerm<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-t>', ':terminal<CR>', { noremap = true, silent = true })

-- Set space as leader
vim.g.mapleader = " "        -- Normal leader
vim.g.maplocalleader = " "   -- Local leader (optional)

vim.keymap.set("n", "<leader>y", [["+y]])  -- Copy to system clipboard
vim.keymap.set("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
vim.keymap.set("n", "<leader>x", "<cmd>BufferClose<CR>", opts)