-- Настройка nvim
--- Алиасы
local opt = vim.opt
local g = vim.g

--[[ Поиск ]]--
-- Игнорировать регистр при поиске
-- Если теперь введем "IGNORE", то он найдет и "ignore"
opt.ignorecase = true

-- Не игнорировать регистр, если есть символы в верхнем регистре
-- Если напишем "Ignore", то он будет искать только "Ignore"
opt.smartcase = true

-- Подсвечивать найденные текстовые объекты
opt.showmatch = true

--[[ Настройка табов ]]--
-- Установка количества пробельных символов, когда сдвигаем с помощью "<", ">"
-- По сути не смотря на expandtab в терминале все равно отображаются пробельные символы, поэтому установим их количество на одно нажатие этих кнопок
opt.shiftwidth = 4

-- 1 таб == 4 пробела c новой строки
-- При нажатии <CR> будут вставлять табы. Табы рисуются как пробелы. Именно поэтому мы должны установить что каждый таб в новой строке - 4 пробела
opt.tabstop = 4

-- Подстраивать новые строки под предыдущий отступ
opt.smartindent = true

-- Эта опция гарантирует, что для отступов строк будут использоваться пробелы, даже когда вы нажимаете клавишу «Tab».
opt.expandtab = true

--[[ Настройка панелей ]]--
-- Вертикальные сплиты становятся справа
-- По умолчанию панели в Neovim ставятся в зависимости от расположения текущей панели. Данная настройка поможет нам держать панели в порядке
opt.splitright = true

-- Горизонтальные сплиты становятся снизу
opt.splitbelow = true

--[[ Дополнительные настройки ]]--
-- Используем системный буфер обмена
opt.clipboard = 'unnamedplus'

-- Отключаем дополнение файлов в конце
opt.fixeol = false

-- Автодополнение (встроенное в Neovim)
opt.completeopt = { 'menuone', 'noselect', 'noinsert' }

-- Не закрывает буффер при переходе
opt.hidden = true

-- Показать нумерацию строк
opt.number = true

-- Сделать строки относительными
opt.relativenumber = true

-- Разделитель на 80 строк
opt.colorcolumn = '80'

-- Курсор в центре экрана
opt.so = 999

-- Ширина нумерации
opt.numberwidth = 2

-- Настройка пробела в качестве leader кнопки
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
g.mapleader = ' '

-- Настройка ranger
g.ranger_command_override = 'ranger --cmd "set show_hidden=true"'

-- Выход без сохранения
vim.api.nvim_create_user_command('Q', 'q!', {})

vim.o.mousescroll  = 'ver:5,hor:6' -- Customize mouse scroll

vim.o.scrolloff = 5

-- undofile
opt.undofile = true
