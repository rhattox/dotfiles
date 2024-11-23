local M = {}

M.opts = {
  PATH = "skip",
  cmd = true,
  automatic_installation = true,
  ensure_installed = {
    "lua_ls",
    "pyright",
    "clangd",
    "bashls",
    "sqlls",
    "helm_ls",
    "yamlls",
    "jdtls",
    "ansiblels",
    "dockerls",
    "docker_compose_language_service"
  },
  max_concurrent_installers = 10,
}

return M
