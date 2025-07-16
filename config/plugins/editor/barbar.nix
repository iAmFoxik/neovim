{
  plugins.barbar = {
    enable = true;
    settings = {
      clickable = true;
      tabpages = false;
      insert_at_end = true;
      icons = {
        button = "✖";
        buffer_index = true;
        filetype = {
          enabled = true;
        };
        visible = {
          modified = {
            buffer_number = false;
          };
        };
        gitsigns = {
          added = {
            enabled = true;
            icon = "󰍌";
          };
          changed = {
            enabled = true;
            icon = "󰚕";
          };
          deleted = {
            enabled = true;
            icon = "󰍚";
          };
        };
      };
    };
  };
  keymaps = [
    {
      key = "<C-q>";
      action = "<CMD>BufferPrevious<CR>";
    }
    {
      key = "<C-e>";
      action = "<CMD>BufferNext<CR>";
    }
    # {
    #   key = "<C-Q>";
    #   action = "<CMD>BufferMovePrevious<CR>";
    # }
    # {
    #   key = "<C-E>";
    #   action = "<CMD>BufferMoveNext<CR>";
    # }
    {
      key = "<C-x>";
      action = "<CMD>BufferClose<CR>";
    }
    {
      key = "<leader>1";
      action = "<CMD>BufferGoto 1<CR>";
    }
    {
      key = "<leader>2";
      action = "<CMD>BufferGoto 2<CR>";
    }
    {
      key = "<leader>3";
      action = "<CMD>BufferGoto 3<CR>";
    }
    {
      key = "<leader>4";
      action = "<CMD>BufferGoto 4<CR>";
    }
    {
      key = "<leader>5";
      action = "<CMD>BufferGoto 5<CR>";
    }
    {
      key = "<leader>6";
      action = "<CMD>BufferGoto 6<CR>";
    }
    {
      key = "<leader>7";
      action = "<CMD>BufferGoto 7<CR>";
    }
    {
      key = "<leader>8";
      action = "<CMD>BufferGoto 8<CR>";
    }
    {
      key = "<leader>9";
      action = "<CMD>BufferGoto 9<CR>";
    }
    {
      key = "<leader>0";
      action = "<CMD>BufferLast<CR>";
    }
  ];
}
