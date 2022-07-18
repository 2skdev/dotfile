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
    'akinsho/bufferline.nvim', tag = "v2.*",
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use {
    'phaazon/hop.nvim', branch = 'v2',
    config = function()
      require('hop').setup({ keys = 'etovxqpdygfblzhckisuran' })
    end
  }

  use {
    'terrortylor/nvim-comment'
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  use {
    'TimUntersberger/neogit',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'lewis6991/gitsigns.nvim',
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'L3MON4D3/LuaSnip'
  }

  use {
    'neovim/nvim-lspconfig'
  }
  use {
    'williamboman/nvim-lsp-installer'
  }

  use {
    'hrsh7th/nvim-cmp'
  }
  use {
    'hrsh7th/cmp-nvim-lsp'
  }
  use {
    'hrsh7th/cmp-buffer'
  }
  use {
    'onsails/lspkind.nvim'
  }

end)

vim.cmd [[colorscheme palenight]]

require('plugins.lualine')
require('plugins.bufferline')
require('plugins.telescope')
require('plugins.hop')
require('plugins.nvim-comment')
require('plugins.nvim-tree')
require('plugins.neogit')
require('plugins.gitsigns')
require('plugins.nvim-treesitter')
require('plugins.nvim-lsp-installer')
require('plugins.nvim-cmp')
require('plugins.lspkind')
