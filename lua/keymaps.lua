local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local bufopts = { noremap=true, silent=true, buffer=bufnr }

map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})

if not vim.g.vscode then
    -- Системный буфер обмена shift - Y
    map('v', '<leader>y', '"+y', {})
    map('', '<leader>p', '"+p', {})
    -- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
    map('i', 'jj', '<Esc>', {noremap = true})
    -- Автоформат + сохранение по CTRL-s , как в нормальном, так и в insert режиме
    map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
    map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
    -- Переключение вкладок с помощью TAB или shift-tab (wintabs)
    map('n', '<Tab>', ':WintabsNext<CR>', default_opts)
    map('n', '<S-Tab>', '<C-w><C-w><CR>', default_opts)
    -- map('n', '<C-w>', ':WintabsClose<CR>', default_opts)
    -- Открыть Ranger
    map('n', '<C-o>', ':Ranger<CR>', default_opts)
    map('n', '<C-p>', ':Files<CR>', default_opts)
    vim.keymap.set("", "<leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
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
    map('', '<C-b>', ':TermExec cmd="cargo run"<CR>', default_opts)
    -- Python
    local opts = { noremap=true, silent=true }
    local on_attach = function(client, bufnr)
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local bufopts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      client.server_capabilities.hoverProvider = false
    end

    require('lspconfig').ruff_lsp.setup {
      on_attach = on_attach,
      init_options = {
        settings = {
          -- Any extra CLI arguments for `ruff` go here.
          args = {},
        }
      }
    }


    -- Smart Split
    vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
    vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
    vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
    vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
    -- moving between splits
    vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
    vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
    vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
    vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
    -- swapping buffers between windows
    vim.keymap.set('n', '<leader><C-h>', require('smart-splits').swap_buf_left)
    vim.keymap.set('n', '<leader><C-j>', require('smart-splits').swap_buf_down)
    vim.keymap.set('n', '<leader><C-k>', require('smart-splits').swap_buf_up)
    vim.keymap.set('n', '<leader><C-l>', require('smart-splits').swap_buf_right)
end
