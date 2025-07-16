{
  plugins.overseer = {
    enable = true;

    settings = {
      strategy = "terminal";
      direction = "float";
      auto_scroll = true;
    };
  };

  keymaps = [
    {
      key = "<F9>";
      action = "<CMD>OverseerRun<CR>";
    }
  ];
}
