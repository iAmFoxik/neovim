local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Системный буфер обмена shift - Y
map('v', 'S-Y', '"+y', {})
-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map('i', 'jj', '<Esc>', {noremap = true})
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Автоформат + сохранение по CTRL-s , как в нормальном, так и в insert режиме
map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
-- Переключение вкладок с помощью TAB или shift-tab (wintabs)
map('n', '<Tab>', ':WintabsNext<CR>', default_opts)
map('n', '<S-Tab>', '<C-w><C-w><CR>', default_opts)
-- map('n', '<C-w>', ':WintabsClose<CR>', default_opts)
-- Открыть Ranger
map('n', '<C-o>', ':GFiles<CR>', default_opts)
map('n', '<C-p>', ':Files<CR>', default_opts)
vim.keymap.set("", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
map('', '<C-t>', ':ToggleTerm<CR>', default_opts)
-- Настройка toggleterm
map('t', '<esc>', [[<C-\><C-n>]], default_opts)
-- Настройка tagbar
map('','<C-p>', ':TagbarToggle<CR>', default_opts)
-- Настройка Trouble
-- map('','','', default_opts)
-- Normal-mode commands
map('n', '<S-j>', ':MoveLine(1)<CR>', default_opts)
map('n', '<S-k>', ':MoveLine(-1)<CR>', default_opts)
map('n', '<leader>wf', ':MoveWord(1)<CR>', default_opts)
map('n', '<leader>wb', ':MoveWord(-1)<CR>', default_opts)

-- Visual-mode commands
map('v', '<S-j>', ':MoveBlock(1)<CR>', default_opts)
map('v', '<S-k>', ':MoveBlock(-1)<CR>', default_opts)
map('v', '<S-h>', ':MoveHBlock(-1)<CR>', default_opts)
map('v', '<S-l>', ':MoveHBlock(1)<CR>', default_opts)
-- Trouble mode
map('', '<leader>b', ':TroubleToggle<CR>', default_opts)
