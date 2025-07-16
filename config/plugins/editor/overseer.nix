{
  plugins.overseer = {
    enable = true;

    settings = {
      strategy = "toggleterm";
    };
  };

  keymaps = [
    {
      key = "<F9>";
      action = "<CMD>OverseerRun<CR>";
    }
  ];
}
