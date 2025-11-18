local function setup_keymaps(bufnr)
  local function map(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = "LSP: " .. desc, silent = true })
  end

  map("n", "gd", vim.lsp.buf.definition, "Go to definition")
  map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
  map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
  map("n", "gr", vim.lsp.buf.references, "Go to references")
  map("n", "gt", vim.lsp.buf.type_definition, "Go to type definition")

  map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")
  map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
end

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local bufnr = ev.buf
    local opts = { buffer = bufnr, silent = true }
    local client = vim.lsp.get_client_by_id(ev.data.client_id)

    if not client then return end

    setup_keymaps(bufnr)

    if client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
      vim.lsp.inlay_hint.enable(false, opts)
      vim.lsp.inlay_hint.enable(true, opts)
    end
  end,
})

local severity = vim.diagnostic.severity

vim.diagnostic.config({
  virtual_text = true,
  signs = {
    text = {
      [severity.ERROR] = " ",
      [severity.WARN] = " ",
      [severity.INFO] = " ",
      [severity.HINT] = "󰌵 ",
    },
    numhl = {
      [severity.ERROR] = "ErrorMsg",
      [severity.WARN] = "WarningMsg",
    },
  },
})
