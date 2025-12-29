vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp-attach", {}),
  callback = function(event)
    local function map(mode, lhs, rhs, desc)
      vim.keymap.set(
        mode,
        lhs,
        rhs,
        { buffer = event.buf, desc = "LSP: " .. desc, silent = true }
      )
    end

    -- map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    -- map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
    -- map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
    -- map("n", "gr", vim.lsp.buf.references, "Go to references")
    -- map("n", "gt", vim.lsp.buf.type_definition, "Go to type definition")
    map("n", "gl", vim.diagnostic.open_float, "Open Diagnostic Float")
    map("n", "gk", vim.lsp.buf.hover, "Open hover")
    map("n", "<leader>tl", function()
      local virtual_lines = vim.diagnostic.config().virtual_lines
      if virtual_lines then
        vim.diagnostic.config({
          virtual_lines = false,
        })
      else
        vim.diagnostic.config({
          virtual_lines = { current_line = true },
        })
      end
    end, "[T]oggle Virtual [L]ines")

    map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")

    map("n", "[e", function()
      vim.diagnostic.jump({
        count = -1,
        severity = vim.diagnostic.severity.ERROR,
      })
    end, "Go to diagnostic prev (error)")

    map("n", "]e", function()
      vim.diagnostic.jump({
        count = 1,
        severity = vim.diagnostic.severity.ERROR,
      })
    end, "Go to diagnostic next (error)")

    map("n", "[w", function()
      vim.diagnostic.jump({
        count = -1,
        severity = vim.diagnostic.severity.WARN,
      })
    end, "Go to diagnostic prev (warning)")

    map("n", "]w", function()
      vim.diagnostic.jump({
        count = 1,
        severity = vim.diagnostic.severity.WARN,
      })
    end, "Go to diagnostic next (warning)")

    local client = vim.lsp.get_client_by_id(event.data.client_id)

    if not client then
      return
    end

    -- neovim 12
    -- if client:supports_method(vim.lsp.protocol.Methods.textDocument_completion, event.buf) then
    --   vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
    -- end

    if
      client:supports_method(
        vim.lsp.protocol.Methods.textDocument_inlayHint,
        event.buf
      ) and vim.lsp.inlay_hint
    then
      -- vim.lsp.inlay_hint.enable(false, { buffer = event.buf, silent = true })
      -- vim.lsp.inlay_hint.enable(true, { buffer = event.buf, silent = true })

      map("n", "<leader>th", function()
        vim.lsp.inlay_hint.enable(
          not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf })
        )
      end, "[T]oggle Inlay [H]int")
    end

    -- if
    --   client:supports_method(
    --     vim.lsp.protocol.Methods.textDocument_semanticTokens_full
    --   )
    -- then
    --   local ok, semantic_tokens = pcall(require, "vim.lsp.semantic_tokens")
    --   -- vim.print(semantic_tokens)
    --   -- if ok then
    --   --   vim.b.semantic_tokens_enabled = true
    --   -- end
    -- end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
