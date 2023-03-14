# My neovim [NvChad](https://nvchad.github.io/) custom config

## Installation

### 1. backup or remove older configure

⭐️ backup older config

``` shell
mv ~/.config/nvim ~/.config/NVIM.BAK
```

❗️ remove older config

``` shell
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

### 2. Installation NvChad and sync packer

```sh
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```

> await packer installed restart nvim

### 3. Installation my custom config and sync packer

```sh
git clone https://github.com/reaink/nvchad-custom ~/.config/nvim/lua/custom
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```

> await packer installed restart nvim

## Documentation

0. Mappings default config file is nvchad `lua/core/mappings.lua`.
1. Plugins config [plugins/init.lua](./plugins/init.lua).
2. Mappings config [mappings.lua](./mappings.lua).

mappings list call `<leader>ch` open Cheatsheet list.
mappings find call `<S>tk` open Telescope Key Maps Modal.
