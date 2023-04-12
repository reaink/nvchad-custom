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
```

### 2. Installation NvChad and sync plugins

```sh
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

> await installed

### 3. Installation custom configs

```sh
rm -r ~/.config/nvim/lua/custom
git clone https://github.com/reaink/nvchad-custom ~/.config/nvim/lua/custom
nvim
```

> await installed restart nvim

### 4. install Mason plugins, TreeSitter

Enter nvim execute commands

```sh
:MasonInstallAll

:TSUpdateSync
```

## Documentation

0. Mappings default config file is nvchad `lua/core/mappings.lua`.
1. Plugins config [plugins/init.lua](./plugins/init.lua).
2. Mappings config [mappings.lua](./mappings.lua).

mappings list call `<leader>ch` open Cheatsheet list.
mappings find call `<S>tk` open Telescope Key Maps Modal.
