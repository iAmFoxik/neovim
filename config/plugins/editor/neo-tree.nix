{
  plugins.neo-tree = {
    enable = true;

    autoCleanAfterSessionRestore = true;
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
  ];
}
