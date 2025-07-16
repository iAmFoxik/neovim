{
  plugins.colorizer.enable = true;

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
