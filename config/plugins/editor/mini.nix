{
  plugins.mini = {
    enable = true;

    modules = {
      files = {
        windows = {
          preview = true;
        };
        mappings = {
          close = "<ESC>";
          go_in_plus = "<CR>";
        };
      };
      # indentscope = {
      #   draw = {
      #     delay = 1;
      #   };
      #   options = {
      #     try_as_border = true;
      #   };
      #
      #   symbol = "▎";
      # };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>O";
      action = "<CMD>lua MiniFiles.open()<CR>";
      options = {
        desc = "Explorer";
      };
    }
  ];
}
