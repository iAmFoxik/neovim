vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'NLKNguyen/papercolor-theme'
    use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes' 
    use 'zefei/vim-wintabs'
    use 'zefei/vim-wintabs-powerline'
    use 'Chiel92/vim-autoformat'
    use 'francoiscabrol/ranger.vim'
    use 'rbgrouleff/bclose.vim'
    use 'mhinz/vim-signify'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig' 
    use 'simrat39/rust-tools.nvim'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'
    -- use 'puremourning/vimspector'
    use 'Yggdroot/indentLine'
    use 'jiangmiao/auto-pairs'
    use 'numToStr/Comment.nvim'
    use({
          "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
          config = function()
            require("lsp_lines").setup()
          end,
        })
    use 'akinsho/toggleterm.nvim'
    use 'preservim/tagbar'
    use 'folke/trouble.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'fedepujol/move.nvim'
    use 'mtshiba/pylyzer'
    use 'microsoft/pyright'
    use 'python-lsp/python-lsp-ruff'
    use 'mrjones2014/smart-splits.nvim'
end)


