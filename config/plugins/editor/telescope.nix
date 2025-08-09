{
  plugins.telescope = {
    enable = true;

    extensions.fzf-native = {
      enable = true;
      settings = {
        fuzzy = true;
        override_generic_sorter = true;
        override_file_sorter = true;
        case_mode = "smart_case";
      };
    };

    settings = {
      layout_config = {
        prompt_position = "top";
      };
      set_env = {
        COLORTERM = "truecolor";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      options.desc = "Find files";
      action.__raw = "function() require('telescope.builtin').find_files() end";
    }
  ];
}
