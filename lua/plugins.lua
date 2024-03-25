-- Установка пакетов
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'numToStr/Comment.nvim'
	use "lukas-reineke/indent-blankline.nvim"
	use 'romgrk/barbar.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use 'lewis6991/gitsigns.nvim'
	use 'francoiscabrol/ranger.vim'
	use 'rbgrouleff/bclose.vim'
	use 'rafi/awesome-vim-colorschemes'
	use 'projekt0n/github-nvim-theme'
	use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
	use ({'rust-lang/rust.vim',
		config = function()
			vim.g.rustfmt_autosave = 1
		end
	})
	use 'nvim-lua/plenary.nvim'
	use 'saecki/crates.nvim'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'
	use 'delphinus/cmp-ctags'
	use 'simrat39/rust-tools.nvim'
    use {
        'junegunn/fzf.vim',
        requires = { 'junegunn/fzf', run = ':call fzf#install()' }
    }
    use 'm4xshen/autoclose.nvim'
end)
