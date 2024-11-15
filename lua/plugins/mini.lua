return {
  {
    'echasnovski/mini.files',
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

  { 'echasnovski/mini.surround' }
}
