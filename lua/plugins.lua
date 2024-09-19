-- Установка пакетов
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'numToStr/Comment.nvim'
	use "lukas-reineke/indent-blankline.nvim"
	use 'nvim-tree/nvim-web-devicons'
	use 'lewis6991/gitsigns.nvim'
	use 'rbgrouleff/bclose.vim'
	use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
	use ({'rust-lang/rust.vim',
		config = function()
			vim.g.rustfmt_autosave = 1
		end
	})
    use "yorik1984/newpaper.nvim"
    use 'nvim-lua/plenary.nvim'
	use ({'saecki/crates.nvim', tag='stable'})
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
    use 'j-hui/fidget.nvim'
    use {
        'FabianWirth/search.nvim',
        requires = { 'nvim-telescope/telescope.nvim' },
    }
    use 'echasnovski/mini.files'
    use { "anuvyklack/windows.nvim",
       requires = "anuvyklack/middleclass",
    }
    use 'zefei/vim-wintabs'
    use {'kaarmu/typst.vim', ft = {'typst'}}
    use {
        "jiaoshijie/undotree",
            requires = {
                "nvim-lua/plenary.nvim",
            },
        }
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    use {
        'debugloop/telescope-undo.nvim',
        requires = {
            'nvim-telescope/telescope.nvim',
            requires = { 'nvim-lua/plenary.nvim' }
        },
        config = function()
            require('telescope').setup({
                extensions = {
                    undo = {
                        saved_only = true,
                    },
                },
            })
            require('telescope').load_extension("undo")
        end
    }
end)
