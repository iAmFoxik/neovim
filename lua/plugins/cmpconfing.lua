return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-cmdline' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/vim-vsnip' },
      { 'hrsh7th/vim-vsnip-integ' },
      { 'hrsh7th/cmp-vsnip' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'L3MON4D3/LuaSnip' },
    },
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')
      cmp.setup({
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer' },
          { name = 'path' },
        }),
        mapping = cmp.mapping.preset.insert({
          ['<Up>'] = cmp.mapping.select_prev_item(),
          ['<Down>'] = cmp.mapping.select_next_item(),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
          }),
          ['<S-Up>'] = cmp.mapping.scroll_docs(-4),
          ['<S-Down>'] = cmp.mapping.scroll_docs(4),
          ['<C-d>'] = cmp.mapping.open_docs(),
        }),
        window = {
          completion = cmp.config.window.bordered({
            -- winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:Pmenu',
            winhighlight = "Normal:Normal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None"
          }),
          documentation = cmp.config.window.bordered({
            winhighlight = "Normal:Pmenu,FloatBorder:pmenu"
          }),
        },
        view = {
          docs = {
            auto_open = false,
          }
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end
        }
      })
      -- cmp.setup({
      --   sources = cmp.config.sources({
      --     { name = 'nvim_lsp' },
      --     { name = 'nvim_lua' },
      --     { name = 'luasnip' },
      --     { name = 'path' },
      --     {
      --       name = 'ctags',
      --       option = {
      --         executable = 'ctags',
      --         trigger_characters = { '.' },
      --         trigger_characters_fs = {
      --           rust = { '::', '.' },
      --         }
      --       },
      --     },
      --   }),
      --   snippet = {
      --     expand = function(args)
      --       require('luasnip').lsp_expand(args.body)
      --     end,
      --   },
      --   mapping = {
      --     ['<Up>'] = cmp.mapping.select_prev_item(),
      --     ['<Down>'] = cmp.mapping.select_next_item(),
      --     ['<Tab>'] = cmp.mapping.select_next_item(),
      --     ['<CR>'] = cmp.mapping.confirm({
      --       behavior = cmp.ConfirmBehavior.Replace,
      --       select = true
      --     }),
      --     ['<C-l>'] = cmp.mapping.complete(),
      --     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      --     ['<C-f>'] = cmp.mapping.scroll_docs(4),
      --     ['<C-d>'] = cmp.mapping.open_docs(),
      --   },
      --   formatting = {
      --     fields = { 'abbr', 'kind', 'menu' },
      --     format = function(entry, item)
      --       local icons = require('icons')
      --       item.kind = string.format('%s %s', icons[item.kind], item.kind or '?')
      --       -- vim.notify(vim.inspect(entry.source))
      --       return item
      --     end,
      --   },
      --   view = {
      --     docs = {
      --       auto_open = false,
      --     }
      --   },
      --   completion = {
      --     completeopt = 'menu,menuone,noinsert,noselect',
      --     autocomplete = {
      --       cmp.TriggerEvent.TextChanged,
      --       cmp.TriggerEvent.InsertEnter,
      --     },
      --
      --     keyword_length = 0,
      --   },
      -- })
    end,
  },
  { 'L3MON4D3/LuaSnip',         dependencies = { 'hrsh7th/nvim-cmp' } },
  { 'saadparwaiz1/cmp_luasnip', dependencies = { 'hrsh7th/nvim-cmp' } },
  { 'delphinus/cmp-ctags',      dependencies = { 'hrsh7th/nvim-cmp' } },
}
