local M = {}

-- In order to disable a default keymap, use
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }

-- Your custom mappings
M.theprimeogen = {
  v = {
    ["J"] = {":m '>+1<CR>gv=gv", "MoveLineUp"},
    ["K"] = {":m '<-2<CR>gv=gv", "MoveLineDown"},
    ["H"] = {"0"},
    ["L"] = {"$"}
  },
  n = {
    ["<S-Up>"] = {"<S-Up>zz"},
    ["<S-Down>"] = {"<S-Down>zz"},
    ["n"] = {"nzzzv"},
    ["N"] = {"Nzzzv"},
    ["H"] = {"0"},
    ["J"] = {"<S-Up>zz"},
    ["K"] = {"<S-Down>zz"},
    ["L"] = {"$"},
    ["<leader>NT"] = {":tabnew <CR>"},
    ["<leader>CT"] = {":tabclose <CR>"},
    ["<leader>TN"] = {":tabnext <CR>"},
    ["<leader>TP"] = {":tabprevious <CR>"}
  },
}

return M
