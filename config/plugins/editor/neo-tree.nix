{
  plugins.neo-tree = {
    enable = true;

    closeIfLastWindow = true;
    window = {
      width = 30;
      mappings = {
        "<CR>" = "open";
        h = "navigate_up";
      };

    };
    filesystem = {
      filteredItems = {
        hideDotfiles = false;
        hideGitignored = false;
      };
      followCurrentFile = {
        enabled = true;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>o";
      action = "<CMD>Neotree toggle<CR>";
      options = {
        desc = "Explorer";
      };
    }
    {
      mode = "n";
      key = "<leader>g";
      action = "<CMD>Neotree float git_status<CR>";
      options = {
        desc = "Explorer";
      };
    }
  ];
}
