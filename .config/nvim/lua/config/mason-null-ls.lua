local M = {}

M.opts = {
  automatic_installation = true,
  ensure_installed = {
    "stylua",
    "eslint",
    "spell",
    "black",
    "ast_grep",
    "ansible-lint",
    "flake8",
    "shellcheck",
    "prettier",
  },
}

return M
