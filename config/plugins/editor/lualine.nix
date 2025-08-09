{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        icons_enabled = true;
        theme = "auto";
        globalstatus = true;


        component_separators = { left = ""; right = ""; };
        section_separators = { left = ""; right = ""; };
      };

      sections = {
        lualine_a = [ "mode" ];
        lualine_b = [ "" ];
        lualine_c = [ "filename" ];

        lualine_x = [ "lsp_status" "branch" "diff" "filetype" "location" ];
        lualine_y = [ "" ];
        lualine_z = [ "" ];
      };
      inactive_sections = {
        lualine_a = [ "" ];
        lualine_b = [ "" ];
        lualine_c = [ "filename" ];
        lualine_x = [ "location" ];
        lualine_y = [ "" ];
        lualine_z = [ "" ];
      };
    };
  };
}
