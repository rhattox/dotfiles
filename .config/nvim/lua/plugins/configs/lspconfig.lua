dofile(vim.g.base46_cache .. "lsp")
require "nvchad.lsp"

local M = {}
local utils = require "core.utils"

-- export on_attach & capabilities for custom lspconfigs

M.on_attach = function(client, bufnr)
  utils.load_mappings("lspconfig", { buffer = bufnr })

  if client.server_capabilities.signatureHelpProvider then
    require("nvchad.signature").setup(client)
  end

  if not utils.load_config().ui.lsp_semantic_tokens and client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

require("lspconfig").lua_ls.setup {
  on_attach = M.on_attach,
  capabilities = M.capabilities,

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

require("lspconfig").bashls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").docker_compose_language_service.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").dockerls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").hydra_lsp.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").rust_analyzer.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

-- require("lspconfig").snyk_ls.setup{
--   on_attach = M.on_attach,
--   capabilities = M.capabilities,
-- }

require("lspconfig").ast_grep.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").jedi_language_server.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").jdtls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").jqls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").helm_ls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").jsonls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").crystalline.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").vimls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").tflint.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").clangd.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

require("lspconfig").denols.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").gopls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").sqlls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").nginx_language_server.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").ruby_ls.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

require("lspconfig").kotlin_language_server.setup{
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}



return M
