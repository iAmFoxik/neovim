return {
  {
    "yorik1984/newpaper.nvim",
    priority = 1000
  },
  {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme github_light")
    end
  }
}
