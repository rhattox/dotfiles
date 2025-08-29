return {{
    "mason-org/mason.nvim",
    dependencies = {"williamboman/mason-lspconfig.nvim", "WhoIsSethDaniel/mason-tool-installer.nvim"},
    config = function()
        require("mason").setup()
        require("mason-tool-installer").setup({
            ensure_installed = {"shellcheck", "shfmt"},
            auto_update = true,
            run_on_start = true
        })
    end
}}
