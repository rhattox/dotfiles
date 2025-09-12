# dotfiles

Clone Repository
```
git clone https://github.com/rhattox/dotfiles ~/.config/nvim
```

# Nvim Version v.0.11.3


## Installation

If using asdf

```
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 24.6.0
asdf set -u nodejs 24.6.0

asdf plugin add lua https://github.com/Stratus3D/asdf-lua.git
asdf install lua 5.1
asdf set -u lua 5.1

asdf plugin add ripgrep https://gitlab.com/wt0f/asdf-ripgrep.git
asdf install ripgrep 14.1.1
asdf set -u ripgrep 14.1.1

asdf plugin add fd https://gitlab.com/wt0f/asdf-fd.git
asdf install fd 10.3.0
asdf set -u fd 10.3.0
```


### Nvim Debug Functions

`:echo &filetype` -- get the file type - useful for lsp attach debug

`:messages` -- Show all messages from erros warning etc

Error messages with an E on sign column is opened with `:lua vim.diagnostic.open_float()` command
=======

