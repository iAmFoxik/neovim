return {

  { 'nvim-tree/nvim-web-devicons', lazy = true },
  {
    'yorik1984/newpaper.nvim',
    -- config = function()
    --   require('newpaper').setup()
    -- end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
  },
  {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    -- config = function()
    --   require('github-theme').setup()
    --
    --   vim.cmd('colorscheme github_light')
    -- end
  },
  {
    "cschlueter/vim-github",
    priority = 1000,
  },
  {
    dir = "~/Codes/Lua/atomic.nvim",
    name = "atomic",
    lazy = false,
    priority = 1000,
    config = function()
      require('atomic').setup()

      vim.cmd('colorscheme atomic')
    end
  }
}
