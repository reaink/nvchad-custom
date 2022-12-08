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

1. Plugins config [plugins/init.lua](./plugins/init.lua).
2. Mappings config [mappings.lua](./mappings.lua).

Misc

- Window

| Models | Keys        | Instructions                      |
| ------ | ----------- | --------------------------------- |
| n      | <C-h/j/k/l> | Moving the cursor between windows |
| n      | <C-H/J/K/K> | Move Window                       |

- Tree File ([nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua))

| Models | Keys   | Instructions      |
| ------ | ------ | ----------------- |
| n      | \<C-n> | Toggle Tree files |



### Plugins

1. [Hop](https://github.com/phaazon/hop.nvim)

| Models | Keys         | Instructions |
| ------ | ------------ | ------------ |
| n      | \<leader\>hw | HopWord      |
| n      | \<leader\>hl | HopLine      |
| n      | \<leader\>hc | HopChar1     |
