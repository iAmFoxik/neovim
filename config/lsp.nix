{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      # lua
      lua_ls.enable = true;

      # nix
      nil_ls.enable = true;
    };
    keymaps = {
      silent = true;
      lspBuf = {
        gd = {
          action = "definition";
          desc = "Goto Definition";
        };
        gr = {
          action = "references";
          desc = "Goto References";
        };
        gD = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        T = {
          action = "hover";
          desc = "Hover";
        };
      };
    };
  };

}
