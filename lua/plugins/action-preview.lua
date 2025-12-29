return {
  "aznhe21/actions-preview.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
    require("actions-preview").setup({
      highlight_command = {
        require("actions-preview.highlight").diff_so_fancy(),
      },
      backend = {
        "nui",
      },
      nui = {
        dir = "col",
      },
    })
  end,
}
