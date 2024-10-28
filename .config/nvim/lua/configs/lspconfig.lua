require("mason").setup()
require("mason-lspconfig").setup()

-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- EXAMPLE
local servers = { "html", "cssls", "lua_ls", "yamlls", "jdtls" }
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end


lspconfig.jdtls.setup{
    cmd = {'jdtls'},
    root_dir = lspconfig.util.root_pattern('pom.xml'),
}

lspconfig.helm_ls.setup({
  settings = {
    ["helm-ls"] = {
      yamlls = {
        path = "yaml-language-server",
      },
    },
  },
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
  filetypes = { "yaml", "yml", "ansible" },
  root_dir = lspconfig.util.root_pattern("roles", "playbooks"),
  single_file_support = true,

})
