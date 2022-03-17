local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd('packadd packer.nvim')

return require('packer').startup(function(use)

  use {'wbthomason/packer.nvim', opt = true} -- Packer can manage itself

  ------------------------------ Language support ------------------------------

  -- Language server
  use {'neovim/nvim-lspconfig', config = [[require('config.lsp')]] }

  -- Indent
  use {'Vimjas/vim-python-pep8-indent', ft = {'python'}}

  ------------------------------ File Search ------------------------------

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



  ------------------------------ Buffer ------------------------------

  -- Buffer jump
  -- use {
  --   'phaazon/hop.nvim',
  --   event = "VimEnter",
  --   config = function()
  --     vim.defer_fn(function() require('config.nvim_hop') end, 2000)
  --   end
  -- }
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }



  ------------------------------ Display ------------------------------

  -- icons
  use {'kyazdani42/nvim-web-devicons', event = 'VimEnter'}

  -- notification plugin
    use({
      "rcarriga/nvim-notify",
      event = "BufEnter",
      config = function()
        vim.defer_fn(function() require('config.nvim-notify') end, 2000)
      end,
      requires = { 'kyazdani42/nvim-web-devicons' }
    })

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',
    config = [[require('config.statusline')]],
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Buffer line
  use {
    "akinsho/bufferline.nvim", event = "VimEnter",
    config = [[require('config.bufferline')]],
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Themes
  use {'ayu-theme/ayu-vim'}
  use {'patstockwell/vim-monokai-tasty'}

  -- show and trim trailing whitespaces
  use {'jdhao/whitespace.nvim', event = 'VimEnter'}

  -- Patched fonts
  -- use {'ryanoasis/vim-devicons'}

  if packer_bootstrap then
    require('packer').sync()
  end
end)


