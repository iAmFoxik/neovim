local status, cmp = pcall(require, "cmp")

if not status then
    return
end

cmp.setup({
    sources = cmp.config.sources({
        { name = "buffer", keyword_length = 2 },
        { name = "nvim_lsp", keyword_length = 1 },
        { name = "ctags",
            option = {
                executable = "ctags",
                trigger_characters = { "." },
                trigger_characters_ft = {
                    rust = { ".", "::" },
                },
            },
        },
    }),
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
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
             behavior = cmp.ConfirmBehavior.Insert,
             select = true,
         }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-d>'] = cmp.mapping.open_docs(),
    },
    formatting = {
        fields = {'abbr', 'kind', 'menu'},
        format = function(_, item)
            local icons = require('icons')
            item.kind = string.format("%s %s", icons[item.kind], item.kind or "?")
            return item
        end,
    },
    view = {
        docs = {
            auto_open = false,
        }
    }
})
