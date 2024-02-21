local plugins = {

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "prettier",
        "stylua",
        "typescript-language-server"
      }
    }
  },
}


return plugins

