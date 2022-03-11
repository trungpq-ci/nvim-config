local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd('packadd packer.nvim')

return require('packer').startup(function(use)

  use {'wbthomason/packer.nvim', opt = true} -- Packer can manage itself

  -- Language server
  use {'neovim/nvim-lspconfig', config = [[require('config.lsp')]] }

  -- Indent
  use {'Vimjas/vim-python-pep8-indent', ft = {'python'}}

  -- File search, tag search and more
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'kyazdani42/nvim-web-devicons'},
      {'nvim-treesitter/nvim-treesitter', cmd = ':TSUpdate', opt = true}
    }
  }
  -- use({ "Yggdroot/LeaderF", cmd = "Leaderf", run = ":LeaderfInstallCExtension" })


  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',
    config = [[require('config.statusline')]],
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Themes
  use {'ayu-theme/ayu-vim'}

  -- show and trim trailing whitespaces
  use {'jdhao/whitespace.nvim', event = 'VimEnter'}

  if packer_bootstrap then
    require('packer').sync()
  end
end)


