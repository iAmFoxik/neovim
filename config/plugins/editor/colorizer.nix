{
  plugins.colorizer = {
    enable = true;
    settings = {
      user_commands = [
        "ColorizerToggle"
        "ColorizerReloadAllBuffers"
      ];
      user_default_options = {
        mode = "virtualtext";
        names = false;
        virtualtext = "■ ";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>c";
      action = "<CMD>ColorizerToggle<CR>";
      options = {
        desc = "Colorizer toggle";
      };
    }
  ];
}
