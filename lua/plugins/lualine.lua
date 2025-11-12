return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        theme = "auto",
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icons_enabled = true,
          }
        },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "lsp_status", "filetype" },
        lualine_y = { "" },
        lualine_z = { "location" },
      },
      extensions = { "neo-tree" },
    })
  end,
}
