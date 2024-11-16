return {
  {
    'zefei/vim-wintabs',
    lazy = false,
    keys = {
      { '<leader>wv', '<cmd>WindowsMaximizeVertically<CR>',   desc = 'Maximize Window Vertically' },
      { '<leader>wh', '<cmd>WindowsMaximizeHorizontally<CR>', desc = 'Maximize Window Horizontally' },
      { '<leader>ww', '<cmd>WintabsClose<CR>',                desc = 'Close Current Tab' },
      { '<leader>we', '<cmd>WintabsNext<CR>',                 desc = 'Go to Next Tab' },
      { '<leader>wq', '<cmd>WintabsPrevious<CR>',             desc = 'Go to Previous Tab' },
      { '<leader>1',  '<cmd>WintabsGo 1<CR>',                 desc = 'Go to Tab 1' },
      { '<leader>2',  '<cmd>WintabsGo 2<CR>',                 desc = 'Go to Tab 2' },
      { '<leader>3',  '<cmd>WintabsGo 3<CR>',                 desc = 'Go to Tab 3' },
      { '<leader>4',  '<cmd>WintabsGo 4<CR>',                 desc = 'Go to Tab 4' },
      { '<leader>5',  '<cmd>WintabsGo 5<CR>',                 desc = 'Go to Tab 5' },
      { '<leader>6',  '<cmd>WintabsGo 6<CR>',                 desc = 'Go to Tab 6' },
      { '<leader>7',  '<cmd>WintabsGo 7<CR>',                 desc = 'Go to Tab 7' },
      { '<leader>8',  '<cmd>WintabsGo 8<CR>',                 desc = 'Go to Tab 8' },
      { '<leader>9',  '<cmd>WintabsGo 9<CR>',                 desc = 'Go to Tab 9' },
    },
    config = function()

    end
  },
  {
    'jiaoshijie/undotree',
    keys = {
      { '<leader>u', { '<cmd>Telescope undo<cr>', mode = 'n' } }
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('undotree').setup()
    end
  },
  {
    'hedyhli/outline.nvim',
    lazy = true,
    cmd = { 'Outline', 'OutlineOpen' },
    keys = {
      { '<leader>f', '<cmd>Outline<CR>', desc = 'Toggle outline' },
    },
    opts = {
      -- Your setup opts here
    },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module 'ibl'
    ---@type ibl.config
    opts = {},
  },
  {
    'altermo/ultimate-autopair.nvim',
    event = { 'InsertEnter', 'CmdlineEnter' },
    branch = 'v0.6',
    opts = {
      tabout = { enable = true },
    },
  },
}
