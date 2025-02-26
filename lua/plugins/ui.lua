return {

  { 'nvim-tree/nvim-web-devicons', lazy = true },
  {
    'yorik1984/newpaper.nvim',
    config = function()
      require('newpaper').setup()
    end
  },
  { "catppuccin/nvim",             name = "catppuccin", priority = 1000 },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  }
}
