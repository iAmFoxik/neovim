local opt = vim.opt

vim.g.mapleader = ";"
vim.g.maplocalleader = " "

opt.ignorecase = true  -- Игнорировать регистр при поиске
opt.infercase = true   -- При автодополнение учитывется регистр вводимого текста
opt.smartcase = true   -- Не игнорировать регистр, если есть символы в верхнем регистр
opt.showmatch = true   -- Подсвечивать найденные текстовые объекты
-- [[Tab]]
opt.shiftwidth = 4     -- Установка количество пробелова при сдвиге
opt.tabstop = 4        -- 1 таб == 4 пробела
opt.smartindent = true -- Подстраивать новые строки под предыдущий отступ
opt.expandtab = true   -- Перевод tab в пробелы

-- [[Настройка панели]]
opt.splitright = true -- Вертикальные сплиты становяться справа
opt.splitbelow = true -- Горизонтальные сплиты становяться снизу

-- [[Тект]]
opt.wrap = true      -- Визуальный перенос длинных строк на экране
opt.linebreak = true -- Разбивает длинные строки не в середине слова, а на границах слов

-- [[Дополнительные настройки]]
opt.clipboard = "unnamedplus"                           -- Используем системный буфер обмена
opt.fixeol = false                                      -- Отключаем дополнение файлов в конце
opt.completeopt = { "menuone", "noselect", "noinsert" } -- Автодополнение (встроенное в Neovim)
opt.number = true                                       -- Показать нумерацию строк
opt.colorcolumn = "80"                                  -- Разделитель на 80 строк
opt.so = 999                                            -- Курсор в центре экрана
opt.numberwidth = 3                                     -- Ширина нумерации
opt.fileencoding = "utf-8"                              -- Кодирование файла в UTF-8
opt.termguicolors = true                                -- Включает поддержку 24-битного цвета
opt.virtualedit =
"block"                                                 -- в режиме "block" позволяет размещать курсор за пределами реального текста при блочном выделении
opt.writebackup = false                                 -- Отключает создание резервной копии перед перезаписью файла
opt.swapfile = false                                    -- Отключает создание swap-файла
opt.undofile = true                                     -- Сохранять изменения даже после закрытия файла
