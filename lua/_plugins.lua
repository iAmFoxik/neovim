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

  -- Утилиты и функциональность редактора
  use 'rbgrouleff/bclose.vim'
  use 'numToStr/Comment.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'm4xshen/autoclose.nvim'
  use 'stevearc/dressing.nvim'

  -- git


  -- terminal and runner

  -- Search
  use {
    'FabianWirth/search.nvim',
    requires = { 'nvim-telescope/telescope.nvim' },
  }

  -- UI

  if packer_bootstrap then
    require('packer').sync()
  end
end)
