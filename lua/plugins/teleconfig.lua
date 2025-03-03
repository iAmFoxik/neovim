return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup({
        extensions = {
          undo = {
            saved_only = true,
          },
          media_files = {
            find_cmd = 'rg',
          }
        },
      })
      require('telescope').load_extension('undo')
    end
  },
  {
    'debugloop/telescope-undo.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
  }
}
