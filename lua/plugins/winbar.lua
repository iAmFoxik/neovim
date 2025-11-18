vim.api.nvim_create_autocmd("FileType", {
  pattern = { "fzf", "json" },
  callback = function()
    vim.opt_local.winbar = nil
  end,
})

return {
  "fgheng/winbar.nvim",
  opts = {
    enabled = true,
    show_symbols = true,
    exclude_filetype = {
      "neo-tree",
      "help",
      "startify",
      "dashboard",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "alpha",
      "lir",
      "Outline",
      "spectre_panel",
      "toggleterm",
      "af",
      "fzf",
      "json",
      "preview",
    },
  }
}
