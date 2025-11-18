vim.cmd.highlight('IndentLineCurrent guifg=#123456')

return {
  "nvimdev/indentmini.nvim",
  opts = {
    only_current = true,
  },
}
