-- Plugin specification for helm-ls.nvim, a language server for Helm templates
return {{
    "qvalentin/helm-ls.nvim",  -- The plugin repository
    ft = "helm",               -- Load this plugin only for files with 'helm' filetype
    opts = {
        -- Optional: add configuration options here
    }
}}
