local opts = {noremap = true}

-- Telesearch
vim.keymap.set('n', '<space>o', '<Cmd>lua MiniFiles.open()<CR>', opts)

-- Crates.nvim
local crates = require('crates')
vim.keymap.set('n', '<leader>cf', crates.show_features_popup, opts)

-- Vim diagnostic
vim.diagnostic.config({
  virtual_text = false,
})
local warn = { min=vim.diagnostic.severity.WARN }

vim.keymap.set('n', '[w', function ()
    vim.diagnostic.goto_prev({ severity=warn })
end, opts)

vim.keymap.set('n', ']w', function ()
    vim.diagnostic.goto_next({ severity=warn })
end, opts)

local error = { min=vim.diagnostic.severity.ERROR }
vim.keymap.set('n', '[e', function ()
    vim.diagnostic.goto_prev({ severity=error })
end, opts)
vim.keymap.set('n', ']e', function ()
    vim.diagnostic.goto_next({ severity=error })
end, opts)


-- Windows.nvim
local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end
vim.keymap.set('n', '<space>wv', cmd 'WindowsMaximizeVertically')
vim.keymap.set('n', '<space>wh', cmd 'WindowsMaximizeHorizontally')
vim.keymap.set('n', '<space>ww', cmd 'WintabsClose')
vim.keymap.set('n', '<space>we', cmd 'WintabsNext')
vim.keymap.set('n', '<space>wq', cmd 'WintabsPrevious')


-- 
vim.keymap.set('n', ',,', '<Cmd>nohlsearch<CR>', opts)


