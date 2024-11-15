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
  }
}
