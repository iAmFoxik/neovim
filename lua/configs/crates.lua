local status, crates = pcall(require, 'crates')

if not status then
    return
end
crates.setup()

vim.api.nvim_create_autocmd('BufRead', {
    pattern = "Cargo.toml",
    group = vim.api.nvim_create_augroup('BufRead_cargo.nvim', {}),
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set('n', '<leader>ct', crates.toggle, opts)
        vim.keymap.set('n', '<leader>cr', crates.reload, opts)
        vim.keymap.set('n', '<leader>cv', crates.show_versions_popup, opts)
        vim.keymap.set('n', '<leader>cf', crates.show_features_popup, opts)
        vim.keymap.set('n', '<leader>cd', crates.show_dependencies_popup, opts)
        vim.keymap.set('n', '<leader>cu', crates.update_crate, opts)
        vim.keymap.set('v', '<leader>cu', crates.update_crates, opts)
        vim.keymap.set('n', '<leader>ca', crates.update_all_crates, opts)
        vim.keymap.set('n', '<leader>cU', crates.upgrade_crate, opts)
        vim.keymap.set('v', '<leader>cU', crates.upgrade_crates, opts)
        vim.keymap.set('n', '<leader>cA', crates.upgrade_all_crates, opts)
        vim.keymap.set('n', '<leader>cH', crates.open_homepage, opts)
        vim.keymap.set('n', '<leader>cR', crates.open_repository, opts)
        vim.keymap.set('n', '<leader>cD', crates.open_documentation, opts)
        vim.keymap.set('n', '<leader>cC', crates.open_crates_io, opts)
    end,
})
