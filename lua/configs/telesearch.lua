local builtin = require('telescope.builtin')
require('search').setup({
  append_tabs = {
  },
  tabs = {
    {
      "Buffers",
      function(opts)
        opts = opts or {}
        builtin.buffers(opts)
      end
    },
    {
      "Files",
      function(opts)
        opts = opts or {}
        if vim.fn.isdirectory(".git") == 1 then
          builtin.git_files(opts)
        else
          builtin.find_files(opts)
        end
      end
    },
    {
      "Diagnostic",
      function(opts)
        opts = opts or {}
        builtin.diagnostics(opts)
      end
    },
    {
      "Treesitter",
      function(opts)
        opts = opts or {}
        builtin.treesitter(opts)
      end
    }
  },
})
