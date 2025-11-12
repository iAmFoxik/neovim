return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-cmdline" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-calc" },
      { "saecki/crates.nvim" },
      { "onsails/lspkind.nvim" },
      { "L3MON4D3/LuaSnip" },
      { "delphinus/cmp-ctags" },
      { "brenoprata10/nvim-highlight-colors" },
    },
    opts = function()
      vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      local luasnip = require("luasnip")
      local auto_select = true

      return {
        auto_brackets = {},
        completion = {
          completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
        },
        mapping = cmp.mapping.preset.insert({
          ["<Up>"] = cmp.mapping.select_prev_item(),
          ["<Down>"] = cmp.mapping.select_next_item(),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
          }),

          ["<S-Up>"] = cmp.mapping.scroll_docs(-4),
          ["<S-Down>"] = cmp.mapping.scroll_docs(4),
          ["<C-d>"] = cmp.mapping.open_docs(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
          { name = "buffer" },
          {
            name = "ctags",
            option = {
              executable = "ctags",
              trigger_character = { "." },
              trigger_character_ft = {
                c = { ".", "->" },
                rust = { ".", "::" },
              },
            },
          },
        }),
        formatting = {
          fields = { "kind", "abbr", "menu" },
          format = lspkind.cmp_format({
            mode = "symbol",
            maxwidth = 30,
            ellipsis_char = "…",
          }),
        },
        window = {
          completion = cmp.config.window.bordered({
            max_item_count = 10,
            winhighlight = "Normal:Normal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None"
          }),
          documentation = cmp.config.window.bordered({
            winhighlight = "Normal:Pmenu,FloatBorder:pmenu"
          }),
        },
        view = {
          docs = {
            auto_open = false,
          },
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end
        },
      }
    end
  }
}
