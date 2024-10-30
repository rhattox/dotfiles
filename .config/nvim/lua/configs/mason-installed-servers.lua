require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "sqlls",
    "groovyls",
    "bashls",
    "lua_ls",
    "helm_ls",
    "yamlls",
    "jdtls",
    "ansiblels",
    "dockerls",
    "docker_compose_language_service"
  },
  automatic_installation = true,
})
