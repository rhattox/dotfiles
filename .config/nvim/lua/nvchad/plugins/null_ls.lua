return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.diagnostics.eslint,           -- Example for JavaScript/TypeScript
          null_ls.builtins.diagnostics.flake8,           -- Example for Python
          null_ls.builtins.diagnostics.shellcheck,       -- Example for shell scripts
        },
      })
    end,
    event = "BufReadPre",
  }
}
