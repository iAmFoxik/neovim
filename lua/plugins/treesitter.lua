return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "rust",
        "c",
        "lua",
        "markdown",
        "python",
        "regex",
        "vim",
        "json",
        "just",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
    },
  },
}
