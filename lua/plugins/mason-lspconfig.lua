return {
  {
    'williamboman/mason-lspconfig.nvim',

    config = function()
      local masonlsp = require('mason-lspconfig')
      masonlsp.setup({
        ensure_installed = {
          'lua_ls',
          'texlab',
          'zls',
        },
        automatic_installation = true,
      })

      masonlsp.setup_handlers {
        ['rust_analyzer'] = function() end,
      }
    end
  }
}
