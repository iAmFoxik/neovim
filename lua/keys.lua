local opts = { noremap = true }

-- Telesearch
vim.keymap.set('n', '<space>o', '<Cmd>lua MiniFiles.open()<CR>', opts)

-- Crates.nvim
-- local crates = require('crates')
-- vim.keymap.set('n', '<leader>cf', crates.show_features_popup, opts)

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


-- Windows.nvim
local function cmd(command)
  return table.concat({ '<Cmd>', command, '<CR>' })
end
vim.keymap.set('n', '<leader>wv', cmd 'WindowsMaximizeVertically', opts)
vim.keymap.set('n', '<leader>wh', cmd 'WindowsMaximizeHorizontally', opts)
vim.keymap.set('n', '<leader>ww', cmd 'WintabsClose', opts)
vim.keymap.set('n', '<leader>we', cmd 'WintabsNext', opts)
vim.keymap.set('n', '<leader>wq', cmd 'WintabsPrevious', opts)
vim.keymap.set('n', '<leader>1', cmd 'WintabsGo 1', opts)
vim.keymap.set('n', '<leader>2', cmd 'WintabsGo 2', opts)
vim.keymap.set('n', '<leader>3', cmd 'WintabsGo 3', opts)
vim.keymap.set('n', '<leader>4', cmd 'WintabsGo 4', opts)
vim.keymap.set('n', '<leader>5', cmd 'WintabsGo 5', opts)
vim.keymap.set('n', '<leader>6', cmd 'WintabsGo 6', opts)
vim.keymap.set('n', '<leader>7', cmd 'WintabsGo 7', opts)
vim.keymap.set('n', '<leader>8', cmd 'WintabsGo 8', opts)
vim.keymap.set('n', '<leader>9', cmd 'WintabsGo 9', opts)

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

-- undotree
vim.keymap.set('n', '<leader>u', cmd 'Telescope undo', opts)

-- lazygit
vim.keymap.set('n', '<leader>gg', cmd 'LazyGit', opts)

-- Overseer
vim.keymap.set('n', '<leader>b', cmd 'OverseerRun', opts)

--
vim.keymap.set('n', ',,', '<Cmd>nohlsearch<CR>', opts)
-- vim.keymap.set('n', '<space>b', '<Cmd>Cargo build --release<CR>', opts)
-- vim.keymap.set('n', '<space>B', '<Cmd>Cargo run --release<CR>', opts)
