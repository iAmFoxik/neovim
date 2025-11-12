return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        rust = { "rustfmt", lsp_format = "fallback" },
        toml = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
        ["_"] = { "trim_whitespace" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 300,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>fm", function()
      conform.format({
        lsp_fallback = true,
        async = false,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end
}
