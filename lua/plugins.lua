vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- packer
  use 'wbthomason/packer.nvim'

  -- Общие зависимости
  use 'nvim-lua/plenary.nvim'
  use 'nvim-tree/nvim-web-devicons'

  -- Навигация и работа с файлами
  use {
    'junegunn/fzf.vim',
    requires = { 'junegunn/fzf', run = ':call fzf#install()' }
  }
  use 'echasnovski/mini.files'
  use {
    'jiaoshijie/undotree',
    requires = {
      'nvim-lua/plenary.nvim',
    },
  }

  -- Telescope и расширения
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  use {
    'debugloop/telescope-undo.nvim',
    requires = {
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim' }
    },
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- cmp
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'delphinus/cmp-ctags',
    },
  }

  -- Rust
  use({
    'rust-lang/rust.vim',
    config = function()
      vim.g.rustfmt_autosave = 1
    end
  })
  use 'simrat39/rust-tools.nvim'
  use 'saecki/crates.nvim'

  -- Утилиты и функциональность редактора
  use 'rbgrouleff/bclose.vim'
  use 'numToStr/Comment.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'm4xshen/autoclose.nvim'
  use 'stevearc/dressing.nvim'
  use 'echasnovski/mini.surround'
  use 'zefei/vim-wintabs'

  -- git
  use 'lewis6991/gitsigns.nvim'
  use({
    'kdheepak/lazygit.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
  })


  -- terminal and runner
  use 'akinsho/toggleterm.nvim'
  use {
    'stevearc/overseer.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'stevearc/dressing.nvim',
    },
  }

  -- Search
  use {
    'FabianWirth/search.nvim',
    requires = { 'nvim-telescope/telescope.nvim' },
  }

  -- UI
  use 'yorik1984/newpaper.nvim'
  use 'j-hui/fidget.nvim'
end)
