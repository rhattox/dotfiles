-- Extend Neovim's filetype detection for custom extensions and patterns
vim.filetype.add({
  extension = {
    gotmpl = 'gotmpl', -- Treat files with .gotmpl extension as 'gotmpl' filetype
  },
  pattern = {
    [".*/templates/.*%.tpl"] = "helm",      -- Files matching this pattern are set to 'helm' filetype
    [".*/templates/.*%.ya?ml"] = "helm",    -- YAML files in templates directories are set to 'helm'
    ["helmfile.*%.ya?ml"] = "helm",         -- Files like helmfile.yaml or helmfile.yml are set to 'helm'
  },
})