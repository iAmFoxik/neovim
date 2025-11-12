vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        enable = true,
        command = "check",
      },
      inlayHints = {
        typeHints = { enable = true },
        parameterHints = { enable = true },
      },
    }
  }
})

return {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
}
