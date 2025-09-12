-- Extend Neovim's filetype detection for custom extensions and patterns
vim.filetype.add({
    extension = {
        gotmpl = 'gotmpl' -- Treat files with .gotmpl extension as 'gotmpl' filetype
    },
    pattern = {
        [".*/templates/.*%.tpl"] = "helm", -- Files matching this pattern are set to 'helm' filetype
        [".*/templates/.*%.ya?ml"] = "helm", -- YAML files in templates directories are set to 'helm'
        ["helmfile.*%.ya?ml"] = "helm" -- Files like helmfile.yaml or helmfile.yml are set to 'helm'
    }
})

-- Special handling for GitHub Actions workflow files to set their filetype to 'yaml.github'
vim.filetype.add({
    pattern = {
        -- Match YAML files in any .github/workflows or .github/actions subfolder
        ['.*/%.github[%w/]+workflows[%w/]+.*%.ya?ml'] = 'yaml.github',
        ['.*/%.github[%w/]+actions[%w/]+.*%.ya?ml'] = 'yaml.github' -- Also match files in .github/actions
    }
})
