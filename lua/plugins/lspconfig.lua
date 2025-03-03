return {
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'williamboman/mason-lspconfig.nvim' },
    config = function()
      local servers = {
        'lua_ls',
        'zls',
        'pylsp'
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
      lspconfig.pylsp.setup {
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = { enabled = false },
              pyflakes = { enabled = false },
              flake8 = { enabled = true, maxLineLength = 120 },
              jedi_completion = { fuzzy = true },
              pylsp_mypy = { enabled = true, live_mode = false }
            }
          }
        }
      }

      -- lspconfig.rust_analyzer.setup {}

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }
          vim.keymap.set({ 'n', 'v' }, '<leader>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, opts)
          vim.keymap.set('n', '<leader>lf', function()
            vim.lsp.buf.format({ async = true })
          end, opts)
          vim.keymap.set('n', '<leader>vd', function()
            vim.cmd([[ vsplit ]])
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
}
