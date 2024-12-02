local opts = { noremap = true }

local function cmd(command)
  return table.concat({ '<Cmd>', command, '<CR>' })
end

-- windpws split
vim.keymap.set('n', '<leader>-', cmd 'split', opts)
vim.keymap.set('n', '<leader>_', cmd 'vsplit', opts)
vim.keymap.set('n', '<leader>h', '<C-w>h', opts)
vim.keymap.set('n', '<leader>j', '<C-w>j', opts)
vim.keymap.set('n', '<leader>k', '<C-w>k', opts)
vim.keymap.set('n', '<leader>l', '<C-w>l', opts)
vim.keymap.set('n', '<leader>H', '<C-w>>', opts)
vim.keymap.set('n', '<leader>J', '<C-w>-', opts)
vim.keymap.set('n', '<leader>K', '<C-w>+', opts)
vim.keymap.set('n', '<leader>L', '<C-w><', opts)
vim.keymap.set('n', '<leader>x', '<C-w>c', opts)

vim.keymap.set('n', ',,', '<Cmd>nohlsearch<CR>', opts)

-- Vim diagnostic
vim.diagnostic.config({
  virtual_text = false,
})
local warn = { min = vim.diagnostic.severity.WARN }

vim.keymap.set('n', '[w', function()
  vim.diagnostic.goto_prev({ severity = warn })
end, opts)

vim.keymap.set('n', ']w', function()
  vim.diagnostic.goto_next({ severity = warn })
end, opts)

local error = { min = vim.diagnostic.severity.ERROR }
vim.keymap.set('n', '[e', function()
  vim.diagnostic.goto_prev({ severity = error })
end, opts)
vim.keymap.set('n', ']e', function()
  vim.diagnostic.goto_next({ severity = error })
end, opts)
