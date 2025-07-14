{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    # Split
    {
      key = "<leader>-";
      action = ":split<CR>";
    }
    {
      key = "<leader>_";
      action = ":vsplit<CR>";
    }
    # Windows movement
    {
      key = "<leader>h";
      action = "<C-w>h";
    }
    {
      key = "<leader>j";
      action = "<C-w>j";
    }
    {
      key = "<leader>k";
      action = "<C-w>k";
    }
    {
      key = "<leader>l";
      action = "<C-w>l";
    }
    # Windows Resize
    {
      key = "<leader>H";
      action = "<C-w>>";
    }
    {
      key = "<leader>J";
      action = "<C-w>-";
    }
    {
      key = "<leader>K";
      action = "<C-w>+";
    }
    {
      key = "<leader>L";
      action = "<C-w><";
    }
    {
      key = "<C-Up>";
      action = ":resize -2<CR>";
    }
    {
      key = "<C-Down>";
      action = ":resize +2<CR>";
    }
    {
      key = "<C-Left>";
      action = ":vertical resize +2<CR>";
    }
    {
      key = "<C-Right>";
      action = ":vertical resize -2<CR>";
    }
    # Close tab
    {
      key = "<leader>x";
      action = "<C-w>c";
    }
    # NoSearch
    {
      key = ",,";
      action = ":nohlsearch<CR>";
    }
    # Line movement
    {
      mode = "n";
      key = "<S-k>";
      action = ":move-2<CR>";
    }
    {
      mode = "n";
      key = "<S-j>";
      action = ":move+<CR>";
    }
    # Block movement
    {
      mode = "v";
      key = "<S-k>";
      action = ":m '<-2<CR>gv=gv";
    }
    {
      mode = "v";
      key = "<S-j>";
      action = ":m '>+1<CR>gv=gv";
    }
    # Crates
    {
      mode = "n";
      key = "<leader>ct";
      action = "<CMD>lua require('crates').toggle()<CR>";
    }
    {
      mode = "n";
      key = "<leader>cr";
      action = "<CMD>lua require('crates').reload()<CR>";
    }
    {
      mode = "n";
      key = "<leader>cv";
      action = "<CMD>lua require('crates').show_versions_popup()<CR>";
    }
    {
      mode = "n";
      key = "<leader>cf";
      action = "<CMD>lua require('crates').show_features_popup()<CR>";
    }
    # { "<leader>cd", function() require('crates').show_dependencies_popup() end, desc = 'Show Dependencies',  buffer = true },
    # { "<leader>cu", function() require('crates').update_crate() end,            desc = 'Update Crate',       buffer = true },
    # { "<leader>ca", function() require('crates').update_all_crates() end,       desc = 'Update All Crates',  buffer = true },
    # { "<leader>cU", function() require('crates').upgrade_crate() end,           desc = 'Upgrade Crate',      buffer = true },
    # { "<leader>cA" function() require('crates').upgrade_all_crates() end,      desc = 'Upgrade All Crates', buffer = true },
    # { "<leader>cH", function() require('crates').open_homepage() end,           desc = 'Open Homepage',      buffer = true },
    # { "<leader>cR", function() require('crates').open_repository() end,         desc = 'Open Repository',    buffer = true },
    # { "<leader>cD", function() require('crates').open_documentation() end,      desc = 'Open Documentation', buffer = true },
    # { "<leader>cC", function() require('crates').open_crates_io() end,          desc = 'Open Crates.io',     buffer = true },
  ];
}
