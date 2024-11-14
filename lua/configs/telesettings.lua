require('telescope').setup({
  extensions = {
    undo = {
      saved_only = true,
    },
  },
})
require('telescope').load_extension('undo')
