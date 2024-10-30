require("mason").setup()
require("mason-lspconfig").setup()

-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- EXAMPLE
local servers = { "html", "cssls", "lua_ls", "yamlls", "jdtls", "dockerls", "docker_compose_language_service", "ansiblels", "bashls", "groovyls", "sqlls" }
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end


lspconfig.jdtls.setup {
  cmd = { 'jdtls' },
  root_dir = lspconfig.util.root_pattern('pom.xml'),
}

lspconfig.docker_compose_language_service.setup({
  cmd = { 'docker-compose-langserver', '--stdio' },
  filetypes = { 'yaml' },
  root_dir = lspconfig.util.root_pattern('docker-compose.yaml', 'docker-compose.yml', 'compose.yaml', 'compose.yml'),
  single_file_support = true,
})

lspconfig.yamlls.setup({
  on_attach = function (client, bufnr)
    client.stop()
  end,
  cmd = { 'yaml-language-server', '--stdio' },
  filetypes = { },
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true,
  settings = {
    -- https://github.com/redhat-developer/vscode-redhat-telemetry#how-to-disable-telemetry-reporting
    redhat = { telemetry = { enabled = false } },
  },
})

lspconfig.helm_ls.setup({
  settings = {
    ["helm-ls"] = {
      yamlls = {
        path = "yaml-language-server",
      },
    },
  },
  root_dir = lspconfig.util.root_pattern("Chart.yaml", "templates")
})

lspconfig.ansiblels.setup({
  cmd = { 'ansible-language-server', '--stdio' },
  settings = {
    ansible = {
      python = {
        interpreterPath = 'python',
      },
      ansible = {
        path = 'ansible',
      },
      executionEnvironment = {
        enabled = false,
      },
      validation = {
        enabled = true,
        lint = {
          enabled = true,
          path = 'ansible-lint',
        },
      },
    },
  },
  filetypes = { "ansible" },
  root_dir = lspconfig.util.root_pattern("roles", "playbooks"),
  single_file_support = true,

})
