return {
  {
    'romgrk/barbar.nvim',
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      animation = true,
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    config = function()
      local barbar = require('barbar')

      barbar.setup({
        clickable = true,
        tabpages = false,
        insert_at_end = true,
        icons = {
          button = '✖',
          buffer_index = true,
          filetype = { enabled = true },
          visible = { modified = { buffer_number = false } },
          gitsigns = {
            added = { enabled = true, icon = '+' },
            changed = { enabled = true, icon = '~' },
            deleted = { enabled = true, icon = '-' }
          }
        }
      })

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      -- Move to previous/next
      map('n', '<leader>wq', '<Cmd>BufferPrevious<CR>', opts)
      map('n', '<leader>we', '<Cmd>BufferNext<CR>', opts)
      -- Re-order to previous/next
      map('n', '<C-q>', '<Cmd>BufferMovePrevious<CR>', opts)
      map('n', '<C-e>', '<Cmd>BufferMoveNext<CR>', opts)
      -- Goto buffer in position...
      map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
      map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
      map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
      map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
      map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
      map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
      map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
      map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
      map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
      map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
      -- Pin/unpin buffer
      map('n', '<C-p>', '<Cmd>BufferPin<CR>', opts)
      -- Close buffer
      map('n', '<leader>ww', '<Cmd>BufferClose<CR>', opts)
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
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      vim.notify = require('notify')
    end
  },
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {
      {
        "<leader>ts",
        "<cmd>Trouble symbols toggle<CR>",
        desc = "Symbols (Trouble)"
      },
      {
        "<leader>td",
        "<cmd>Trouble diagnostics toggle focus=true<CR>",
        desc = "Diagnostics (Trouble)"
      },
      {
        "<leader>tD",
        "<cmd>Trouble diagnostics toggle filter.buf=0 focus=true win.type=split win.position=right<CR>",
        desc = "Diagnostics (Trouble)"
      }

    },
    modes = {
      test = {
        diagnostics = {
          type = 'split',
          position = 'right'
        }
      }
    }
  },
  {
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup({
      })
    end
    -- Old text                    Command         New text
    -- surr*ound_words             ysiw)           (surround_words)
    -- *make strings               ys$"            "make strings"
    -- [delete ar*ound me!]        ds]             delete around me!
    -- remove <b>HTML t*ags</b>    dst             remove HTML tags
    -- 'change quot*es'            cs'"            "change quotes"
    -- <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    -- delete(functi*on calls)     dsf             function calls
  },
  {
    'm4xshen/autoclose.nvim',
    config = function()
      require('autoclose').setup()
    end
  },
  {
    'junegunn/fzf.vim',
    -- optional for icon support
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    dependencies = { 'junegunn/fzf' },

  },
  -- {
  --   'sidebar-nvim/sidebar.nvim',
  --   config = function()
  --     require('sidebar-nvim').config({
  --
  --     })
  --   end
  -- }
}
