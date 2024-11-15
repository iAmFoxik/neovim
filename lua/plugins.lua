vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
  else
    return false
  end
end

local packer_bootstrap = ensure_packer()

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
      'hrsh7th/vim-vsnip',
      'hrsh7th/vim-vsnip-integ',
      'hrsh7th/cmp-vsnip',
    },
  }
  use { 'L3MON4D3/LuaSnip', wants = 'hrsh7th/nvim-cmp' }
  use { 'saadparwaiz1/cmp_luasnip', wants = 'hrsh7th/nvim-cmp' }
  use { 'delphinus/cmp-ctags', wants = 'hrsh7th/nvim-cmp' }

  -- Rust
  use({
    'rust-lang/rust.vim',
    config = function()
      vim.g.rustfmt_autosave = 1
    end
  })
  -- use 'simrat39/rust-tools.nvim'
  use 'mrcjkb/rustaceanvim'
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

  if packer_bootstrap then
    require('packer').sync()
  end
end)
