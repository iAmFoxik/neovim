require('alias')

im('jk', '<escape>') -- Аналог выхода из режима ввода
im('kj', '<escape>') -- Аналог выхода из режима ввода

-- Tabs
nm('<Tab>,', '<Cmd>BufferPrevious<CR>')
nm('<Tab>.', '<Cmd>BufferNext<CR>')
nm('<Tab>w', '<Cmd>BufferClose<CR>')
nm('<Tab>1', '<Cmd>BufferGoto 1<CR>')
nm('<Tab>2', '<Cmd>BufferGoto 2<CR>')
nm('<Tab>3', '<Cmd>BufferGoto 3<CR>')
nm('<Tab>4', '<Cmd>BufferGoto 4<CR>')
nm('<Tab>5', '<Cmd>BufferGoto 5<CR>')
nm('<Tab>6', '<Cmd>BufferGoto 6<CR>')
nm('<Tab>7', '<Cmd>BufferGoto 7<CR>')
nm('<Tab>8', '<Cmd>BufferGoto 8<CR>')
nm('<Tab>9', '<Cmd>BufferGoto 9<CR>')
nm('<Tab>0', '<Cmd>BufferLast<CR>')

-- 
nm(',,', '<Cmd>nohlsearch<CR>')
nm('<C-o>', '<Cmd>Files<CR>')
