-- lua/plugins/lsp-bash.lua
-- LSP configuration for Neovim using nvim-lspconfig and mason
return {{
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",           -- LSP/DAP/server installer
        "williamboman/mason-lspconfig.nvim", -- Mason integration with lspconfig
        "hrsh7th/cmp-nvim-lsp"               -- nvim-cmp LSP completion capabilities
    },
    config = function(_, opts)
        -- Setup mason first (for managing LSP servers)
        require("mason").setup()

        -- Capabilities for nvim-cmp (enables LSP-powered completion)
        local cmp_nvim_lsp = require('cmp_nvim_lsp')
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Only require lspconfig after plugin loads
        local lspconfig = require('lspconfig')
        local mason_path = vim.fn.stdpath("data") .. "/mason/bin/helm_ls" -- Path for helm_ls (not used below)

        -- Setup Bash LSP with nvim-cmp capabilities
        lspconfig.bashls.setup({
            capabilities = capabilities
        })

        -- Setup Helm LSP with custom settings
        lspconfig.helm_ls.setup({
            settings = {
                ['helm-ls'] = {
                    yamlls = {
                        path = "yaml-language-server" -- Specify YAML language server path for Helm LS
                    }
                }
            }
        })
    end
}}
