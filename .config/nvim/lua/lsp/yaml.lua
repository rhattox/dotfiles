local lspconfig = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['yamlls'].setup {
  capabilities = capabilities,
  cmd = { 'yaml-language-server', '--stdio' },
  filetypes = {
    "yaml",
    "yml"
  },
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true,
  settings = {
    -- https://github.com/redhat-developer/vscode-redhat-telemetry#how-to-disable-telemetry-reporting
    redhat = { telemetry = { enabled = false } },
  },
}

require('lspconfig')['helm_ls'].setup {
  capabilities = capabilities,
  settings = {
    ["helm-ls"] = {
      yamlls = {
        path = "yaml-language-server",
      },
    },
  },
  root_dir = lspconfig.util.root_pattern(
    "Chart.yaml",
    "templates"
  ),
}


require('lspconfig')['ansiblels'].setup {
  capabilities = capabilities,
  cmd = {
    'ansible-language-server',
    '--stdio'
  },
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
  filetypes = {
    "ansible",
    "yaml",
    "yml"
  },
  root_dir = lspconfig.util.root_pattern(
    "roles",
    "playbooks"
  ),
  single_file_support = true,
}
