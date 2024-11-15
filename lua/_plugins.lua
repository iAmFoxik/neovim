return require('packer').startup(function(use)
  -- packer

  -- Общие зависимости
  use 'nvim-lua/plenary.nvim'

  -- Навигация и работа с файлами
  use {
    'junegunn/fzf.vim',
    requires = { 'junegunn/fzf', run = ':call fzf#install()' }
  }

  -- Telescope и расширения


  -- LSP

  -- cmp

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
  use 'j-hui/fidget.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
