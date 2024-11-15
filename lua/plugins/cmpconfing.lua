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
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'nvim_lua' },
          { name = 'luasnip' },
          { name = 'path' },
          {
            name = 'ctags',
            option = {
              executable = 'ctags',
              trigger_characters = { '.' },
              trigger_characters_fs = {
                rust = { '::', '.' },
              }
            },
          },
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered({
            winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:Pmenu',
          }),
          documentation = cmp.config.window.bordered(),
        },
        mapping = {
          ['<Up>'] = cmp.mapping.select_prev_item(),
          ['<Down>'] = cmp.mapping.select_next_item(),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
          }),
          ['<C-l>'] = cmp.mapping.complete(),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-d>'] = cmp.mapping.open_docs(),
        },
        formatting = {
          fields = { 'abbr', 'kind', 'menu' },
          format = function(entry, item)
            local icons = require('icons')
            item.kind = string.format('%s %s', icons[item.kind], item.kind or '?')
            -- vim.notify(vim.inspect(entry.source))
            return item
          end,
        },
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
    end,
  },
  { 'L3MON4D3/LuaSnip',         dependencies = { 'hrsh7th/nvim-cmp' } },
  { 'saadparwaiz1/cmp_luasnip', dependencies = { 'hrsh7th/nvim-cmp' } },
  { 'delphinus/cmp-ctags',      dependencies = { 'hrsh7th/nvim-cmp' } },
}
