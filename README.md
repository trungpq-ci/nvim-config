# Neo-Vim setting

My repository for Neo-vim config

## Requirements

1. Install NeoVim
2. Install prerequiste packages in `setup.sh`
3. Open nvim, run `:PackerSync`
4. Install terminal that support true color

## Debug

1. Lsp is not working (check using `:LspInfo`): try `:LspStart <lsp-module-name>`
2. Lsp uses servers, which must be install on your machine.
This is done in the `setup.sh` file, through
```bash
python3 -m pip install python-lsp-server
```

## Description

nvim will run init.vim

## Package management

1. plugins are manage by [Packer](https://github.com/wbthomason/packer.nvim)
2. plugins are in `./lua/plugins.lua`
3. calling `lua require('plugins')` from init.vim
4. [Telescope](https://github.com/nvim-telescope/telescope.nvim)
5. [language-server](https://github.com/hrsh7th/nvim-cmp)

## VimTex

1. VimTex use latexmk as compiler. to install this compiler, first install basictex from
[TUG](https://www.tug.org/mactex/morepackages.html), then use texlive to install latexmk, e.g.,
from terminal, `sudo tlmgr install latexmk`

## Themes

1. Mac terminal doesnt support truecolor wow, so do not "set termuicolors"

## References
1. [jdhao blog neovim 2018](https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/)
2. [jdhao blog neovim 2021](https://jdhao.github.io/2021/12/31/using_nvim_after_three_years)
3. [jdhao config](https://github.com/jdhao/nvim-config)
4. [collection of vim theme](https://vimcolorschemes.com/)
5. [How to use lua language to config neovim](https://github.com/nanotee/nvim-lua-guide)
6. [Alacrity](https://alacritty.org/)

## Plugins references
1. [VimTex Tutorial blog](https://www.ejmastnak.com/tutorials/vim-latex/vimtex.html)
2. [VimTex github](https://github.com/lervag/vimtex)
