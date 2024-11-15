-- cmp
require('configs.cmp-conf')

-- Mason
require('configs.mason')

-- Mason-lspconfig
require('configs.mason-lsp')

-- lspconfig
require('configs.lspconfig')

-- Crates
require('configs.crates')

-- Telesearch
require('configs.telesearch')

-- Telescore Settings
require('configs.telesettings')

-- Comment
require('Comment').setup()

-- AutoClose
require('autoclose').setup()

-- theme
-- require('newpaper').setup()

-- Fidget

-- undotree

-- Mini.Files

-- Mini.Surround



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
