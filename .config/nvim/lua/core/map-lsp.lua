local map = vim.keymap.set

-- map("n", "<leader>fm", function()
--   require("conform").format({ lsp_fallback = true })
-- end, { desc = "General Format file" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })
