vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()

  use {
    'wbthomason/packer.nvim', opt = true
  }

  use {
    'drewtempelmeyer/palenight.vim'
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
 
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use {
    'terrortylor/nvim-comment'
  }

 use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

end)

vim.cmd [[colorscheme palenight]]

require('plugins.lualine')
require('plugins.barbar')
require('plugins.telescope')
require('plugins.nvim-comment')
require('plugins.nvim-tree')
require('plugins.nvim-treesitter')
