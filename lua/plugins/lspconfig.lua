return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup({
        ui = {
          icons = {
            package_installed = '✓',
            package_pending = '➜',
            package_uninstalled = '✗'
          }
        }
      })
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',

    config = function()
      local masonlsp = require('mason-lspconfig')
      masonlsp.setup({
        ensure_installed = {
          'lua_ls',
          'texlab',
          'zls',
          'codelldb'
        },
        automatic_installation = true,
      })

      masonlsp.setup_handlers {
        ['rust_analyzer'] = function() end,
      }
    end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'williamboman/mason-lspconfig.nvim' },
    config = function()
      local servers = {
        'lua_ls',
        'texlab',
        'zls'
      }

      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          capabilities = capabilities,
        }
      end

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            format = {
              enable = true,
              defaultConfig = {
                indent_style = 'space',
                indent_size = '2',
              }
            },
          }
        },
      })

      lspconfig.zls.setup {}

      -- latex on mac
      lspconfig.texlab.setup {}

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }
          vim.keymap.set({ 'n', 'v' }, '<leader>n', vim.lsp.buf.rename, opts)
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '<leader>p', vim.lsp.buf.implementation, opts)
          vim.keymap.set('n', '<leader>bd', function()
            vim.cmd([[
            vsplit
        ]])
            vim.lsp.buf.definition()
          end, opts)
        end,
      })

      vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.lua',
        callback = function()
          vim.lsp.buf.format()
        end,
      })

      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'lua',
        callback = function()
          vim.bo.shiftwidth = 2
          vim.bo.tabstop = 2
          vim.bo.softtabstop = 2
        end,
      })
    end
  },
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup({
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        persist_size = true,
        direction = 'horizontal',
        -- direction = 'float',
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end
  },
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
