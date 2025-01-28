return {
  {
    'romgrk/barbar.nvim',
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      animation = true,
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    config = function()
      local barbar = require("barbar")

      barbar.setup({
        clickable = true,
        tabpages = false,
        insert_at_end = true,
        icons = {
          button = "✖",
          buffer_index = true,
          filetype = { enabled = true },
          visible = { modified = { buffer_number = false } },
          gitsigns = {
            added = { enabled = true, icon = "+" },
            changed = { enabled = true, icon = "~" },
            deleted = { enabled = true, icon = "-" }
          }
        }
      })

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      -- Move to previous/next
      map("n", "<leader>wq", "<Cmd>BufferPrevious<CR>", opts)
      map("n", "<leader>we", "<Cmd>BufferNext<CR>", opts)
      -- Re-order to previous/next
      map("n", "<C-q>", "<Cmd>BufferMovePrevious<CR>", opts)
      map("n", "<C-e>", "<Cmd>BufferMoveNext<CR>", opts)
      -- Goto buffer in position...
      map("n", "<C-1>", "<Cmd>BufferGoto 1<CR>", opts)
      map("n", "<C-2>", "<Cmd>BufferGoto 2<CR>", opts)
      map("n", "<C-3>", "<Cmd>BufferGoto 3<CR>", opts)
      map("n", "<C-4>", "<Cmd>BufferGoto 4<CR>", opts)
      map("n", "<C-5>", "<Cmd>BufferGoto 5<CR>", opts)
      map("n", "<C-6>", "<Cmd>BufferGoto 6<CR>", opts)
      map("n", "<C-7>", "<Cmd>BufferGoto 7<CR>", opts)
      map("n", "<C-8>", "<Cmd>BufferGoto 8<CR>", opts)
      map("n", "<C-9>", "<Cmd>BufferGoto 9<CR>", opts)
      map("n", "<C-0>", "<Cmd>BufferLast<CR>", opts)
      -- Pin/unpin buffer
      map("n", "<C-p>", "<Cmd>BufferPin<CR>", opts)
      -- Close buffer
      map("n", "<leader>ww", "<Cmd>BufferClose<CR>", opts)
    end
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
  },
  {
    'hedyhli/outline.nvim',
    lazy = true,
    cmd = { 'Outline', 'OutlineOpen' },
    keys = {
      { '<leader>f', '<cmd>Outline<CR>', desc = 'Toggle outline' },
    },
    opts = {
    },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      vim.notify = require("notify")
    end
  },
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
  }
}
