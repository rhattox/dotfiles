return {{
    "mason-org/mason.nvim", -- Main Mason plugin for managing external tools
    dependencies = {"williamboman/mason-lspconfig.nvim", -- Mason integration with lspconfig
    "WhoIsSethDaniel/mason-tool-installer.nvim" -- Helper for ensuring tools are installed
    },
    config = function()
        require("mason").setup() -- Initialize Mason

        -- Setup mason-tool-installer to ensure these tools are always installed and up to date
        require("mason-tool-installer").setup({
            ensure_installed = {"bashls", -- Bash language server
            "helm-ls", -- Helm language server
            "yaml-language-server", -- YAML language server
            "shellcheck", -- Shell script linter
            "shfmt", -- Shell script formatter
            "kube-linter", -- Kubernetes linter
            "gh-actions-language-server", -- GitHub Actions language server
            "prettier", -- Code formatter
            "lua-language-server", -- Lua language server
            "terraformls", -- Terraform language serverm
            "python-lsp-server",
            },
            auto_update = true, -- Automatically update tools
            run_on_start = true -- Run installer on startup
        })
    end
}}
