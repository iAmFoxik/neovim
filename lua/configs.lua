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

-- Telescore Settings
require('configs.telesettings')

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

-- Mini.Surround
require('mini.surround').setup()

-- Wilder
-- require('wilder').setup({modes = {':', '/'}})

--OverSeer
require('overseer').setup({
  strategy = {
    "toggleterm",
    direction = 'float',
    auto_scroll = true,
  },
})

-- toggleterm
require("toggleterm").setup({
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


-------
-- Rust Settings
-------

-- local rt = require("rust-tools")
--
-- rt.setup({
--   server = {
--     capabilities = require('cmp_nvim_lsp').default_capabilities(),
--     settings = {
--       ["rust-analyzer"] = {
--         completion = {
--           callable = {
--             snippets = "complete",
--           },
--         },
--       },
--     },
--   }
-- })
