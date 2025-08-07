-- Install Plugins through Lazy manager

require("lazy").setup({
  -- Theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()
    vim.cmd.colorscheme "catppuccin"
  end },

  {
    "nvim-java/nvim-java",
    dependencies = {
      { "neovim/nvim-lspconfig" }
    },
    config = function()
      -- Call nvim-java setup before configuring jdtls
      require("java").setup()
      -- Then setup jdtls as needed (e.g. with your custom settings)
      require("lspconfig").jdtls.setup({})
    end,
  },

  -- LSP config
  { "neovim/nvim-lspconfig" },               -- LSP core support
  { "williamboman/mason.nvim", build = ":MasonUpdate" }, -- LSP/DAP manager
  { "williamboman/mason-lspconfig.nvim" },   -- Mason + LSP integration
  { "hrsh7th/cmp-nvim-lsp" },                -- Completion with LSP

  -- Completion engine (next step)
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets", -- optional
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load() -- loads friendly-snippets

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }),
      })
    end,
  }
})

print("Loaded Lazy Vim Plugins!")
