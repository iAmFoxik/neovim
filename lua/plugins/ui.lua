return {

  { 'nvim-tree/nvim-web-devicons', lazy = true },
  {
    'yorik1984/newpaper.nvim',
    config = function()
      require('newpaper').setup()
    end
  },
}
