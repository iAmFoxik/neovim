local status, cmp = pcall(require, "cmp")

if not status then
  return
end

cmp.setup({
  sources = cmp.config.sources({
    -- { name = "buffer",   keyword_length = 2 },
    { name = "nvim_lsp", keyword_length = 1 },
    -- { name = "luasnip" },
    { name = 'vsnip' },
    { name = "nvim_lua" },
    { name = "path" },
    {
      name = "ctags",
      option = {
        executable = "ctags",
        trigger_characters = { "." },
        trigger_characters_fs = {
          rust = { "::", "." },
        }
      },
    },
  }),
  snippet = {
    expand = function(args)
      -- local file = io.open("output.txt", "w+")
      -- file:write(args.body)
      -- file:close()
      vim.fn["vsnip#anonymous"](args.body)
      -- vim.snippet.expand(args.body)
      -- require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered({
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:Pmenu",
    }),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<CR>'] = cmp.mapping.confirm({
      select = true
    }),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-d>'] = cmp.mapping.open_docs(),
  },
  -- formatting = {
  --   fields = { 'abbr', 'kind', 'menu' },
  --   format = function(_, item)
  --     local icons = require('icons')
  --     item.kind = string.format("%s %s", icons[item.kind], item.kind or "?")
  --     return item
  --   end,
  -- },
  view = {
    docs = {
      auto_open = false,
    }
  },
  completion = {
    completeopt = 'menu,menuone,noinsert,noselect',
    autocomplete = {
      cmp.TriggerEvent.TextChanged,
      cmp.TriggerEvent.InsertEnter,
    },

    keyword_length = 0,
  },
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'cmdline' }
  },
  formatting = {
    fields = { 'abbr', 'menu' },
    format = function(entry, vim_item)
      return vim_item
    end,
  },
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  },
  formatting = {
    fields = { 'abbr', 'menu' },
    format = function(entry, vim_item)
      return vim_item
    end,
  }
})
