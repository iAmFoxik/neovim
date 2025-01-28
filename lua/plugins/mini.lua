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
  {
    'echasnovski/mini.pairs',
    version = '*',
    config = function()
      require('mini.pairs').setup({
        modes = { insert = true, command = false, terminal = false },
      })
    end
  },
  {
    'echasnovski/mini.surround',
    version = '*',
  },
  {
    'echasnovski/mini.surround',
    config = function()
      require('mini.surround').setup()
    end
  }
}
