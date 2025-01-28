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
      vim.keymap.set('n', '<leader>i', function()
        local current_setting = vim.lsp.inlay_hint.is_enabled()
        vim.lsp.inlay_hint.enable(not current_setting)
      end)
      -- local mason_registry = require('mason-registry')
      -- local codelldb = mason_registry.get_package('codelldb')
      -- local extension_path = codelldb:get_install_path() .. '/extension/'
      -- local codelldb_path = extension_path .. 'adapter/codelldb'
      -- local liblldb_path = extension_path .. 'lldb/lib/liblldb.dylib'
      -- local cfg = require('rustaceanvim.config')
      --
      -- vim.g.rustaceanvim = {
      --   dap = {
      --     adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
      --   },
      -- }
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
