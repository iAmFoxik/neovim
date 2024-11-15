return {
  { 'zefei/vim-wintabs'
  },
  {
    'jiaoshijie/undotree',
    keys = {
      { '<leader>u', { '<cmd>Telescope undo<cr>', mode = 'n' } }
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('undotree').setup()
    end
  }
}
