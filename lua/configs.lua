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

-------
-- Rust Settings
-------

local rt = require("rust-tools")
rt.setup({
    server = {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
})
