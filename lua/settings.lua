local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.colorcolumn = '110'              -- Разделитель на 80 символов
opt.cursorline = true               -- Подсветка строки с курсором
opt.spelllang= { 'en_us', 'ru' }    -- Словари рус eng
opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = true           -- Вкл. относительную нумерацию строк
opt.so=999                          -- Курсор всегда в центре экрана
opt.undofile = true                 -- Возможность отката назад
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
cmd([[
set encoding=utf-8
set noswapfile
set autoindent
set scrolloff=7
set fileformat=unix
filetype indent plugin on
syntax enable
]])
opt.expandtab = true
opt.background = light
opt.smartindent = true    -- autoindent new lines
opt.virtualedit = onemore
--- opt.listchars = {multispace = '┊'}
opt.listchars = { tab = '┊ ', space ='·', nbsp = '␣',trail = '•',eol = '¬',precedes = '«', extends = '»'}
opt.list = false
-- require("indent_blankline").setup {
--     space_char_blankline = " ",
--     show_current_context = true,
--     show_current_context_start = true,
-- }
-- opt.listchars = {space = '_'}
opt.ts = 4
g.mapleader = '`'
opt.virtualedit = 'onemore'
-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
cmd'colorscheme PaperColor'

-----------------------------------------------------------
-- Настройка для IDE 
-----------------------------------------------------------
--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
