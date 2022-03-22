NvChad configs

1. install [NvChad](https://nvchad.github.io/)
recommend bak and clone to nvim dir
``` sh
mv ~/.config/nvim ~/.config/NVIM.BAK
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
git clone https://github.com/nshusr/nvchad-custom ~/.config/nvim/lua/custom
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```
> await packer installed restart nvim 