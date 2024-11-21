local M = {}

M.opts = {
  ensure_installed = {
    "lua",
    "luadoc",
    "printf",
    "vim",
    "vimdoc",
    "python",
    "javascript",
    "typescript",
    "go",
    "rust",
    "c",
    "cpp",
    "java",
    "html",
    "css",
    "bash",
    "yaml",
    "json",
    "regex"
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return M
