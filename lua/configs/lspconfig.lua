local status, lspconfig = pcall(require, 'lspconfig')

if not status then
    return
end

-- local capabilities = require('cmp_nvim_lsp').capabilities

lspconfig.lua_ls.setup {}

lspconfig.rust_analyzer.setup({
    -- capabilities = capabilities,
    filetypes = {"rust"},
    settings = {
        ['rust-analyzer'] = {
            standalone = true,
            checkOnSave = {
                command = 'clippy'
            },
            cargo = {
                allFeatures = true,
            },
            diagnostics = {
                enable = false,
            }
        },
    },
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = {buffer = ev.buf}
    vim.keymap.set({'n', 'v'}, '<space>r', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<lender>p', vim.lsp.buf.implementation, opts)
  end,
})
