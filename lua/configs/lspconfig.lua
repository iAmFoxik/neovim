local status, lspconfig = pcall(require, 'lspconfig')

if not status then
    return
end

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<lender>i', vim.lsp.buf.implementation, {})
end

local capabilities = require('cmp_nvim_lsp').capabilities

lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"rust"},
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            }
        },
    },
})

lspconfig.lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

