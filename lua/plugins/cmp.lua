-- lua/plugins/cmp.lua
return {{
    "hrsh7th/nvim-cmp",
    dependencies = {"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-vsnip",
                    "hrsh7th/vim-vsnip"},
    config = function()
        local cmp = require("cmp")
        require("cmp_nvim_lsp") -- <-- add this line

        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({
                    select = true
                })
            }),
            sources = cmp.config.sources({{
                name = "nvim_lsp"
            }, {
                name = "vsnip"
            }}, {{
                name = "buffer"
            }, {
                name = "path"
            }})
        })
    end
}}
