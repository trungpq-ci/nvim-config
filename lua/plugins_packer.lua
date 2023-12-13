-- Plugins are manage by Packer
-- https://github.com/wbthomason/packer.nvim
local api = vim.api
local fn = vim.fn

local utils = require("utils")


local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd('packadd packer.nvim')
local packer = require("packer")
local packer_util = require("packer.util")

return require('packer').startup(function(use)
  use { "lewis6991/impatient.nvim", config = [[require('impatient')]] }
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', opt = true}

  ------------------------------ Language support ------------------------------

  -- vscode like dropdown
  use({"onsails/lspkind-nvim", event = "VimEnter"})

  -- auto completetion engine
  use {"hrsh7th/nvim-cmp", after = "lspkind-nvim",
        config = [[require('config.nvim-cmp')]]}

  -- Snippet engine and snippet template
  use { "SirVer/ultisnips", event = "InsertEnter" }
  use { "honza/vim-snippets", after = "ultisnips" }

  -- nvim-cmp completion sources
  use {"hrsh7th/cmp-nvim-lsp", after = "nvim-cmp"}
  use {"hrsh7th/cmp-path", after = "nvim-cmp"}
  use {"hrsh7th/cmp-buffer", after = "nvim-cmp"}
  use {"hrsh7th/cmp-omni", after = "nvim-cmp" }

  use {"quangnguyen30192/cmp-nvim-ultisnips", after = {'nvim-cmp', 'ultisnips'}}
  if vim.g.is_mac then
    use { "hrsh7th/cmp-emoji", after = "nvim-cmp" }
  end


  -- Language server
  use { "neovim/nvim-lspconfig", after = "cmp-nvim-lsp", config = [[require('config.lsp')]] }
  if vim.g.is_mac then
    use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufEnter",
      run = ":TSUpdate",
      config = [[require('config.treesitter')]],
    }
  end

  ------------------------------ Python ------------------------------

  -- Indent
  use {'Vimjas/vim-python-pep8-indent', ft = {'python'}}

  -- Python-related text object
  -- use { "jeetsukumaran/vim-pythonsense", ft = { "python" } }

  -- Snippet engine and snippet template
  -- use {"SirVer/ultisnips", event = 'InsertEnter'}
  -- use { "honza/vim-snippets", after = 'ultisnips'}

  -- LaTEX
  use {'lervag/vimtex'}

  ------------------------------ File Search ------------------------------

  -- File search, tag search and more
  -- use {
  --   'nvim-telescope/telescope.nvim',
  --   tag = '0.1.3',
  --   requires = {
  --     {'nvim-lua/plenary.nvim'},
  --     {'kyazdani42/nvim-web-devicons'},
  --     {'nvim-treesitter/nvim-treesitter'}
  --   },
  --   after = 'nvim-treesitter'
  -- }
  use { "Yggdroot/LeaderF", cmd = "Leaderf",
    run = ":LeaderfInstallCExtension",
  }

  -- File explorer
  -- use {
    -- 'kyazdani42/nvim-tree.lua',
    -- requires = { 'nvim-tree/nvim-web-devicons' },
    -- config = [[require('config.nvim-tree')]]
  -- }

  ------------------------------ Buffer ------------------------------

  -- Buffer jump
  -- use {
    -- 'phaazon/hop.nvim',
    -- event = "VimEnter",
    -- config = function()
      -- vim.defer_fn(function() require('config.hop-nvim') end, 2000)
    -- end
  -- }
  -- use {
  --   'phaazon/hop.nvim',
  --   branch = 'v1', -- optional but strongly recommended
  --   config = function()
  --     -- you can configure Hop the way you like here; see :h hop-config
  --     require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
  --   end
  -- }


  ------------------------------ Utilities ------------------------------

  use {"folke/which-key.nvim",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function() require('config.which-key') end, 2000)
    end
  }

  ------------------------------ Display ------------------------------

  -- fonts
  use {'nvim-tree/nvim-web-devicons'}
  
  -- use {'kyazdani42/nvim-web-devicons', event = "VimEnter"}
  -- Patched fonts
  use {'ryanoasis/vim-devicons'}

  -- notification plugin
    -- use {
      -- "rcarriga/nvim-notify",
      -- event = "BufEnter",
      -- config = function()
        -- vim.defer_fn(function() require('config.nvim-notify') end, 2000)
      -- end,
      -- requires = { 'kyazdani42/nvim-web-devicons' }
    -- }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',
    config = [[require('config.statusline')]],
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Buffer line
  -- use {
    -- "akinsho/bufferline.nvim", event = "VimEnter",
    -- config = [[require('config.bufferline')]],
    -- requires = 'kyazdani42/nvim-web-devicons'
  -- }

  --
  -- Themes
  --
  use {'navarasu/onedark.nvim'}
  -- use {'ayu-theme/ayu-vim'}
  -- use {'patstockwell/vim-monokai-tasty'}
  -- use {'crispybaccoon/dawn.vim'}
  -- use {
  --   "catppuccin/nvim", as = "catppuccin" ,
  --   config = [[require('config.catppuccin')]],
  -- }
  use({"NLKNguyen/papercolor-theme"})


  -- show and trim trailing whitespaces
  -- use {'jdhao/whitespace.nvim', event = 'VimEnter'}


  if packer_bootstrap then
    require('packer').sync()
  end
end)
