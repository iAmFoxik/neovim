-- Comment
require('Comment').setup()

-- cmp
require('configs.cmp-conf')

-- Mason
require('configs.mason')

-- Mason-lspconfig
require('configs.mason-lsp')

-- lspconfig
require('configs.lspconfig')

-- AutoClose
require('autoclose').setup()

-- Crates
require('configs.crates')

-- Telesearch
require('configs.telesearch')

-- Fidget
require('fidget').setup()

-- undotree
require('undotree').setup()

-- Mini.Files
require("mini.files").setup({
  windows = {
    preview = true,
  },
  mappings = {
      close = '<esc>',
      go_in_plus = 'l',
  }
})

-- Windows.nvim
vim.o.winwidth = 20
vim.o.winminwidth = 5
require('windows').setup()

-------
-- Rust Settings
-------

local rt = require("rust-tools")
rt.setup({
    server = {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
})

local helpers = require('runner.handlers.helpers')
local choice = require('runner.handlers.helpers').choice
require('runner').set_handler('rust', choice({
    ['Build'] = helpers.shell_handler('cargo build'),
    ['Build release'] = helpers.shell_handler('cargo build --release'),
    ['Run'] = helpers.shell_handler('cargo run'),
    ['Run release'] = helpers.shell_handler('cargo run --release'),
}))
