return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-mini/mini.icons",
  },
  opts = {
    use_diagnostic_signs = true,
    mode = "workspace_diagnostics",
    position = "bottom", -- position of the list can be: bottom, top, left, right
    height = 15,
    padding = false,
  },
  cmd = "Trouble",
}
