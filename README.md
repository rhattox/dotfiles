# dotfiles


git clone https://github.com/rhattox/dotfiles ~/.config/nvim && nvim
mv ~/.config/.tmux.conf ~/.tmux.conf



## Installation

If using asdf

```
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf install nodejs 24.6.0

asdf set -u nodejs 24.6.0
```


### Nvim Debug Functions

`:echo &filetype` -- get the file type - useful for lsp attach debug

`:messages` -- Show all messages from erros warning etc