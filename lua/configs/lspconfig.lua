local status, lspconfig = pcall(require, 'lspconfig')

if not status then
  return
end

local servers = {
  -- "rust_analyzer",
  "lua_ls",
  "texlab",
  "zls"
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- -- send actions with hover request
-- capabilities.experimental = {
--   hoverActions = true,
--   hoverRange = true,
--   serverStatusNotification = true,
--   snippetTextEdit = true,
--   codeActionGroup = true,
--   ssr = true,
-- }
--
-- -- enable auto-import
-- capabilities.textDocument.completion.completionItem.resolveSupport = {
--   properties = { "documentation", "detail", "additionalTextEdits" },
-- }

-- rust analyzer goodies
-- capabilities.experimental.commands = {
--   commands = {
--     "rust-analyzer.runSingle",
--     "rust-analyzer.debugSingle",
--     "rust-analyzer.showReferences",
--     "rust-analyzer.gotoLocation",
--     "editor.action.triggerParameterHints",
--   },
-- }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      format = {
        enable = true,
        defaultConfig = {
          indent_style = "space",
          indent_size = "2",
        }
      },
    }
  },
})

lspconfig.zls.setup {}

-- lspconfig.rust_analyzer.setup({
--   filetypes = { "rust" },
--   settings = {
--     ['rust-analyzer'] = {
--       standalone = true,
--       cargo = {
--         allFeatures = true,
--       },
--       completion = {
--         callable = {
--           snippets = "complete",
--         },
--       },
--       diagnostics = {
--         enable = false,
--       }
--     },
--   },
-- })

-- latex on mac
lspconfig.texlab.setup {}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set({ 'n', 'v' }, '<leader>n', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>p', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>bd', function()
      vim.cmd([[
            vsplit
        ]])
      vim.lsp.buf.definition()
    end, opts)
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.lua",
  callback = function()
    vim.lsp.buf.format()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
  end,
})
