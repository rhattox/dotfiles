require('lint').linters_by_ft = {
  javascript = {'oxlint'},
  typescript = {'oxlint'},
  lua = {'selene'}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
