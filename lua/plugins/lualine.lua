return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        theme = "auto",
        section_separators = { left = "", right = "" },
        component_separators = { left = '', right = '' },
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
        lualine_b = {
          {
            "filetype",
            icon_only = true,
            separator = "",
            padding = { left = 1, right = 0 }
          },
          {
            "filename",
            separator = "",
            padding = { left = 0, right = 1 }
          },
        },
        lualine_c = {
          "branch",
          {
            "diff",
            symbols = { added = " ", modified = " ", removed = " " }
          }
        },
        lualine_x = { "diagnostics" },
        lualine_y = { "lsp_status", "filetype" },
        lualine_z = { "location" },
      },
      extensions = { "neo-tree" },
    })
  end,
}
