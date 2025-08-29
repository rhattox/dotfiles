-- lua/plugins/lsp-bash.lua
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function(_, opts)
      -- Setup mason first
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "bashls" },
      })

      -- Capabilities for nvim-cmp
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Only require lspconfig *after* plugin loads
      local lspconfig = require("lspconfig")

      -- Setup Bash LSP
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })
    end,
  },
}
