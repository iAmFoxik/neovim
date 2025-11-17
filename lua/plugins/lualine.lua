return {
  "nvim-lualine/lualine.nvim",
  -- dependencies = {
  --   "SmiteshP/nvim-navic"
  -- },
  config = function()
    local lualine = require("lualine")

    local function icon_filename()
      return [[filetype, filename]]
    end
    -- local navic = require("nvim-navic")

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
          -- icon_filename
        },
        lualine_c = { "branch", {
          "diff",
          symbols = { added = " ", modified = " ", removed = " " }
        },
          {
            "navic",
            color_correction = "dynamic",
            navic_opts = nil,
          },
        },
        lualine_x = { "diagnostics" },
        lualine_y = { "lsp_status", "filetype" },
        lualine_z = { "location" },
      },
      extensions = { "neo-tree" },
    })
  end,
}
