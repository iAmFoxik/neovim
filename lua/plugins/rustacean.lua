return {
  {
    'rust-lang/rust.vim',
    config = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
    ft = "rust",
    ['rust-analyzer'] = {
      cargo = {
        allFeature = true,
      },
    },
    config = function()
      local diagnostic_virtual_text_enabled = false

      local function ToggleDiagnosticVirtualText()
        diagnostic_virtual_text_enabled = not diagnostic_virtual_text_enabled
        vim.diagnostic.config({
          virtual_text = diagnostic_virtual_text_enabled and {
            source = "always",
            spacing = 4,
            prefix = '',
            format = function(diagnostic)
              return diagnostic.message
            end,
          } or false
        })
      end


      vim.keymap.set('n', '<leader>iv', ToggleDiagnosticVirtualText, { desc = 'Toggle diagnostic virtual text' })

      vim.keymap.set('n', '<leader>ii', function()
        local current_setting = vim.lsp.inlay_hint.is_enabled()
        vim.lsp.inlay_hint.enable(not current_setting)
      end, { desc = 'Toggle inlay hint' })

      vim.keymap.set('n', '<leader>rd', function()
        vim.cmd("RustLsp renderDiagnostic")
      end, { desc = 'Toggle inline diagnostic' })
    end
  },
  {
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    config = function()
      require('crates').setup({
        completion = {
          cmp = {
            enabled = true
          },
        },
      })
      require('cmp').setup.buffer({
        sources = { { name = "crates" } }
      })
    end,
    keys = {
      { '<leader>ct', function() require('crates').toggle() end,                  desc = 'Toggle Crates Info', buffer = true },
      { '<leader>cr', function() require('crates').reload() end,                  desc = 'Reload Crates Info', buffer = true },
      { '<leader>cv', function() require('crates').show_versions_popup() end,     desc = 'Show Versions',      buffer = true },
      { '<leader>cf', function() require('crates').show_features_popup() end,     desc = 'Show Features',      buffer = true },
      { '<leader>cd', function() require('crates').show_dependencies_popup() end, desc = 'Show Dependencies',  buffer = true },
      { '<leader>cu', function() require('crates').update_crate() end,            desc = 'Update Crate',       buffer = true },
      { '<leader>ca', function() require('crates').update_all_crates() end,       desc = 'Update All Crates',  buffer = true },
      { '<leader>cU', function() require('crates').upgrade_crate() end,           desc = 'Upgrade Crate',      buffer = true },
      { '<leader>cA', function() require('crates').upgrade_all_crates() end,      desc = 'Upgrade All Crates', buffer = true },
      { '<leader>cH', function() require('crates').open_homepage() end,           desc = 'Open Homepage',      buffer = true },
      { '<leader>cR', function() require('crates').open_repository() end,         desc = 'Open Repository',    buffer = true },
      { '<leader>cD', function() require('crates').open_documentation() end,      desc = 'Open Documentation', buffer = true },
      { '<leader>cC', function() require('crates').open_crates_io() end,          desc = 'Open Crates.io',     buffer = true },
    },
  },
  {
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end
  }
}
