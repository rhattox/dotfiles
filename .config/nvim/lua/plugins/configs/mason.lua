local options = {
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  ensure_installed = {
    -- LSPs
    "lua-language-server", -- lua_ls
    "bash-language-server", -- bashls
    "docker-compose-language-service", -- docker_compose_language_service
    "dockerfile-language-server", -- dockerls
    "hydra-lsp", -- hydra_lsp
    "rust-analyzer", -- rust_analyzer
    "snyk", -- snyk_ls
    "ast-grep", -- ast_grep
    "jedi-language-server", -- jedi_language_server
    "jdtls", -- jdtls
    "jq-lsp", -- jqls
    "groovy-language-server", -- groovyls
    "helm-ls", -- helm_ls
    "json-lsp", -- jsonls
    "kotlin-language-server", -- kotlin_language_server
    "lemminx", -- lemminx
    "awk-language-server", -- awk_ls
    "clangd",  -- clangd
    "crystalline", -- crystalline
    "deno", -- denols
    "gopls", -- gopls
    "nginx-language-server", -- nginx_language_server
    "powershell-editor-services", -- powershell_es
    "puppet-editor-services", -- puppet
    "ruby-lsp", -- ruby_ls
    "sqlls", -- sqlls
    "taplo", -- taplo
    "terraform-ls", -- terraformls
    "tflint", -- tflint
    "vim-language-server", -- vimls
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
