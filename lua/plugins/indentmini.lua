vim.cmd.highlight("IndentLineCurrent guifg=#123456")

return {
  "nvimdev/indentmini.nvim",
  opts = {
    only_current = true,
    char = "│",
  },
}

-- local highlight = {
--   "CursorColumn",
--   "Whitespace",
-- }
--
-- local rainbow = {
--   "@function.builtin",
-- }
--
-- return {
--   "lukas-reineke/indent-blankline.nvim",
--   main = "ibl",
--   config = function()
--     local ibl = require("ibl")
--     local hooks = require("ibl.hooks")
--
--     hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--       vim.api.nvim_set_hl(0, "IblScopedHighlight", {
--         fg = "#7aa2f7",
--         nocombine = true,
--       })
--     end)
--
--     ibl.setup({
--       indent = {
--         highlight = highlight,
--         -- char = "",
--       },
--       whitespace = {
--         highlight = highlight,
--       },
--       scope = {
--         enabled = true,
--         char = "▎",
--         highlight = { "Function" },
--         priority = 1024,
--       },
--     })
--
--     -- opts = {
--     --   indent = {
--     --     highlight = highlight,
--     --     -- char = "",
--     --   },
--     --   whitespace = {
--     --     highlight = highlight,
--     --   },
--     --   scope = {
--     --     enabled = true,
--     --     -- -- char = "▎",
--     --     highlight = { "Function", "Label" },
--     --     priority = 500,
--     --   },
--     -- },
--   end,
-- }
