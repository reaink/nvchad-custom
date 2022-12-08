NvChad configs

[NvChad](https://nvchad.github.io/)

## Installation

recommend bak and clone to nvim dir

```sh
mv ~/.config/nvim ~/.config/NVIM.BAK
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
git clone https://github.com/nshusr/nvchad-custom ~/.config/nvim/lua/custom
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```

> await packer installed restart nvim

## Documentation

0. Mappings default config file is nvchad lua/core/mappings.lua.
1. Plugins config [plugins/init.lua](./plugins/init.lua).
2. Mappings config [mappings.lua](./mappings.lua).

mappings find can see `<S>tk` open Telescope Key Maps Modal.
