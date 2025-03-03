return {
  {
    'echasnovski/mini.files',
    lazy = false,
    keys = {
      { '<leader>o', '<cmd>lua MiniFiles.open()<cr>', desc = 'Undo Tree' },
    },
    config = function()
      require('mini.files').setup({
        windows = {
          preview = true,
        },
        mappings = {
          close = '<esc>',
          go_in_plus = 'l',
        }
      })
    end
  },
}
