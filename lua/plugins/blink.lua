vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", { bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", { bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpKindSnippet", { bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpKindStruct", { bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpKindClass", { bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpKindModule", { bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpKindKeyword", { bold = true })

return {
  "saghen/blink.cmp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    { "L3MON4D3/LuaSnip", keys = {} }
  },
  build = 'cargo build --release',
  lazy = false,
  version = "1.*",
  opts = {
    snippets = { preset = "luasnip" },
    signature = { enabled = true },
    appearance = {
      use_nvim_cmp_as_default = false,
      nerd_font_variant = "normal",
    },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        cmdline = {
          min_keyword_length = 2,
        },
        snippets = {
          opts = {
            friendly_snippets = true,
          }
        },
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    keymap = {
      ['<CR>'] = { "accept", "fallback" },
      ['<C-d>'] = { "show_documentation", "hide_documentation" },
      ['<C-k>'] = { "scroll_documentation_up", "fallback" },
      ['<C-j>'] = { "scroll_documentation_down", "fallback" },
      ['<Tab>'] = { "select_next", "fallback" },
      ['<S-Tab>'] = { "select_prev", "fallback" },
    },
    cmdline = {
      enabled = false,
      completion = { menu = { auto_show = true } },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    completion = {
      menu = {
        border = "rounded",
        scrollbar = false,
        winhighlight = "Normal:NormalBlink,FloatBorder:BlinkCmpMenuBorder,CursorLine:PmenuSel,Search:CmdItemKindFunction",
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "kind_icon" },
            { "label",    "label_description", gap = 1 },
            { "kind" },
          }
        }
      },
      documentation = {
        window = {
          border = "rounded",
          scrollbar = false,
          winhighlight = "Normal:Normal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None",
        },
        auto_show = false,
        auto_show_delay_ms = 500,
      },
      ghost_text = { enabled = true },
    }
  }
}
