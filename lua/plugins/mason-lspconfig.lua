return {
  {
    'williamboman/mason-lspconfig.nvim',
    lazy = false,
    opt = {
      auto_install = true,
    },
    config = function()
      local masonlsp = require('mason-lspconfig')
      masonlsp.setup({
        ensure_installed = {
          'lua_ls',
          'texlab',
          'zls',
          'asm_lsp'
        },
        automatic_installation = true,
      })

      masonlsp.setup_handlers {
        ['rust_analyzer'] = function() end,
      }

      -- sign({ name = 'DiagnosticSignError', text = '✘' })
      -- sign({ name = 'DiagnosticSignWarn', text = '▲' })
      -- sign({ name = 'DiagnosticSignHint', text = '⚑' })
      -- sign({ name = 'DiagnosticSignInfo', text = '' })
      vim.diagnostic.config({
        virtual_text = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '',
          },
          numhl = {
            [vim.diagnostic.severity.ERROR] = 'DiagnosticError',
            [vim.diagnostic.severity.WARN] = 'DiagnosticWarn',
            [vim.diagnostic.severity.HINT] = 'DiagnosticHint',
            [vim.diagnostic.severity.INFO] = 'DiagnosticInfo',
          },
          update_in_insert = true,
          underline = true,
        }
      })
    end
  }
}
