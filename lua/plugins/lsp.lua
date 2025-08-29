-- lua/plugins/lsp-bash.lua
return {{
    "neovim/nvim-lspconfig",
    dependencies = {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "hrsh7th/cmp-nvim-lsp"},
    config = function(_, opts)
        -- Setup mason first
        require("mason").setup()

        -- Capabilities for nvim-cmp
        local cmp_nvim_lsp = require('cmp_nvim_lsp')
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Only require lspconfig *after* plugin loads
        local lspconfig = require('lspconfig')
        local mason_path = vim.fn.stdpath("data") .. "/mason/bin/helm_ls"

        -- Setup Bash LSP
        lspconfig.bashls.setup({
            capabilities = capabilities
        })
        -- Setup Helm LSP
        lspconfig.helm_ls.setup({
            settings = {
                ['helm-ls'] = {
                    yamlls = {
                        path = "yaml-language-server"
                    }
                }
            }
        })

        -- lspconfig.yamlls.setup {
        --     on_attach = function(client, bufnr)
        --         if vim.bo[bufnr].filetype == "helm" then
        --             vim.schedule(function()
        --                 vim.cmd("LspStop ++force yamlls")
        --             end)
        --         end
        --         -- other on_attach logic
        --     end
        --     -- other yamlls configurations
        -- }
    end
}}
