return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "rust_analyzer"
      },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup {}
        end,
        ['rust_analyzer'] = function()
          require('lspconfig').rust_analyzer.setup {
            settings = {
              cargo = {
                allFeatures = true,
              },
              checkOnSave = {
                enable = true,
                command = "check",
              },
              inlayHints = {
                typeHints = { enable = true },
                parameterHints = { enable = true },
              },
            },
          }
        end
      },
    },
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
            }
          }
        },
      },
      "neovim/nvim-lspconfig",
    }
  },
}
