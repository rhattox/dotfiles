-- lua/plugins/cmp.lua
-- Completion plugin configuration for nvim-cmp
return {{
    "hrsh7th/nvim-cmp",
    -- List of completion sources and snippet engine dependencies
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",   -- LSP completion source
        "hrsh7th/cmp-buffer",     -- Buffer words completion source
        "hrsh7th/cmp-path",       -- Filesystem paths completion source
        "hrsh7th/cmp-vsnip",      -- Vsnip snippet completion source
        "hrsh7th/vim-vsnip"       -- Vsnip snippet engine
    },
    config = function()
        local cmp = require("cmp")
        require("cmp_nvim_lsp") -- Ensure LSP completion capabilities are available

        cmp.setup({
            -- Configure snippet expansion
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body) -- Use vsnip for snippet expansion
                end
            },
            -- Key mappings for completion navigation and confirmation
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),    -- Scroll docs up
                ["<C-f>"] = cmp.mapping.scroll_docs(4),     -- Scroll docs down
                ["<C-Space>"] = cmp.mapping.complete(),     -- Trigger completion menu
                ["<C-e>"] = cmp.mapping.abort(),            -- Abort completion
                ["<CR>"] = cmp.mapping.confirm({
                    select = true                          -- Confirm selection with Enter
                })
            }),
            -- Define completion sources and their priority
            sources = cmp.config.sources({
                { name = "nvim_lsp" },   -- LSP source (highest priority)
                { name = "vsnip" }       -- Snippet source
            }, {
                { name = "buffer" },     -- Buffer source (lower priority)
                { name = "path" }        -- Path source
            })
        })
    end
}}
