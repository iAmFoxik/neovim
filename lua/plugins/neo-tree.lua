return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons"
    },

    cmd = "Neotree",
    opts = {
      git_status_async = true,
      auto_clean_after_session_restore = true,
      enable_refresh_on_write = true,
      close_if_last_window = true,
      sources = { "filesystem", "buffers", "document_symbols" },
      window = {
        width = 30,
      },
      default_component_configs = {
        indent = {
          padding = 0
        },
      }
    },
  }
}
