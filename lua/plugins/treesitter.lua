return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    confg = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "rust",
          "c",
          "lua",
          "markdown",
          "python",
          "regex",
          "vim",
          "json"
        },
        auto_install = true,
        highlight = {
          enable = true,
        }
      })
    end
  }
}
