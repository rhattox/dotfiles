local options = {
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  ensure_installed = {
    -- LSPs
    "lua-language-server", -- lua_ls
    "bash-language-server", -- bashls
    "docker-compose-language-service",
    "dockerfile-language-server",
    "hydra-lsp", -- hydra_lsp
    "prettier",
    "rust-analyzer", -- rust_analyzer
    "snyk",
    "sonarlint-language-server",
    "trivy",
    "ast-grep",
    "jedi-language-server", -- jedi_language_server
    "jdtls", -- jdtls
    "jq-lsp", -- jqls
    "groovy-language-server",
    "helm-ls", -- helm_ls
    "json-lsp", -- jsonls
    "kotlin-language-server",
    "lemminx",
    "awk-language-server",
    "clangd",
    "crystalline", -- crystalline
    "deno",
    "gopls",
    "nginx-language-server",
    "powershell-editor-services",
    "puppet-editor-services",
    "ruby-lsp",
    "sqlls",
    "taplo",
    "terraform-ls",
    "tflint",
    "vim-language-server",
    "bash-debug-adapter",
    -- Linters
    "shellcheck",
    "hadolint",
    "ansible-lint",
    "alex",
    "biome",
    "cfn-lint",
    "cpplint",
    "detekt",
    "djlint",
    "flake8",
    "golangci-lint",
    "ast-grep",
    "jsonlint",
    "ktlint",
    "rubocop",
    "textlint",
    "tflint",
    "tfsec",
    "vint",
    "yamllint",
    -- Formatters
    "yamlfix",
    "yamlfmt",
    "xmlformatter",
    "stylua",
    "sqlfmt",
    "shfmt",
    "rustywind",
    "prettierd",
    "ktlint",
    "jq",
    "google-java-format",
    "gci",
    "djlint",
    "clang-format",
    "ast-grep",
  }, -- not an option from mason.nvim

 -- PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

return options
