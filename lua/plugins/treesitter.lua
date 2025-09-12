-- lua/plugins/treesitter.lua
-- Treesitter plugin specification and configuration for Neovim
return {{
    "nvim-treesitter/nvim-treesitter", -- Main Treesitter plugin
    branch = 'master',
    lazy = false,                     -- Load Treesitter eagerly at startup
    build = ":TSUpdate",              -- Run :TSUpdate after install/update
    config = function()
        require("nvim-treesitter.configs").setup {
            -- List of parser names to always install (or "all")
            ensure_installed = {
                "bash",    -- Bash parser
                "gotmpl",  -- Go template parser
                "lua",     -- Lua parser
                "helm",    -- Helm parser
                "yaml",     -- YAML parser
                -- Add more languages as needed, commented out ones are optional
            },

            sync_install = true,      -- Install parsers synchronously

            -- Automatically install missing parsers when entering buffer
            -- Set to false if you don't have `tree-sitter` CLI installed
            auto_install = true,

            -- List of parsers to ignore installing (or "all")
            -- ignore_install = { "javascript" },

            -- Treesitter highlighting configuration
            highlight = {
                enable = true,        -- Enable Treesitter-based highlighting

                -- List of languages to disable highlighting for
                -- disable = { "c", "rust" },

                -- Optionally disable for large files using a function
                -- disable = function(lang, buf)
                --     local max_filesize = 100 * 1024 -- 100 KB
                --     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                --     if ok and stats and stats.size > max_filesize then
                --         return true
                --     end
                -- end,

                -- Run `:h syntax` and tree-sitter at the same time (may slow down editor)
                additional_vim_regex_highlighting = false
            },
            indent = {
                enable = true         -- Enable Treesitter-based indentation
            }
        }
    end
}}
