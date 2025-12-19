return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {},
  },
  keys = {
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fg",
      function()
        Snacks.picker.grep()
      end,
      desc = "Undo History",
    },
    {
      "<leader>fb",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>u",
      function()
        Snacks.picker.undo()
      end,
      desc = "Undo History",
    },
    {
      "<leader>pp",
      function()
        Snacks.picker.highlights()
      end,
      desc = "Undo History",
    },
  },
}
