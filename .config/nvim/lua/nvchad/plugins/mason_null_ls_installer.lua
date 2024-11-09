return {
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = { "williamboman/mason.nvim", "jose-elias-alvarez/null-ls.nvim" },
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = { "ast_grep", "ansible-lint", "eslint", "flake8", "shellcheck" }, -- Add the linters/formatters you need
        automatic_installation = true,
      })
    end,
  }
}
