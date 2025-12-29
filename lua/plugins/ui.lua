return {
  {
    "yorik1984/newpaper.nvim",
    priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme newpaper")
    -- end,
  },
  {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme github_light")
    -- end,
  },
  {
    "vpoltora/cursor-light.nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.o.background = "light"
    --   require("cursor-light").setup({
    --     ui = true,
    --     integrations = {
    --       lspsaga = false,
    --       nvim_tree = true,
    --     },
    --   })
    --   vim.cmd.colorscheme("cursor-light")
    -- end,
  },
  {
    "iAmFoxik/atomic.nvim",
    branch = "light",
    -- dev = true,
    -- dir = "/home/user/Projects/flakes/atomic.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      ui = {
        enabled = false,
      },
    },
    config = function()
      vim.cmd("colorscheme atomic")
    end,
  },
  -- {
  --   "ologio/monobiome",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd("colorscheme newpaper")
  --   end,
  -- },
}
