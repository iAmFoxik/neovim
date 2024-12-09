return {
  {
    'stevearc/overseer.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'stevearc/dressing.nvim',
    },
    keys = {
      { '<F9>', '<cmd>OverseerRun<CR>', desc = 'Run Overseer Task' },
    },
    config = function()
      require('overseer').setup({
        strategy = {
          'toggleterm',
          direction = 'float',
          auto_scroll = true,
        },
      })
    end
  }
}
