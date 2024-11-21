local M = {}

M.sources = {
  "null_ls.builtins.formatting.stylua",
  "null_ls.builtins.diagnostics.eslint",
  "null_ls.builtins.completion.spell",
  "null_ls.builtins.formatting.black",
  "null_ls.builtins.formatting.prettier",
  "null_ls.builtins.formatting.shellcheck",
}

return M;
