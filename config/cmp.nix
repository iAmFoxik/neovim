{
  plugins.cmp = {
    enable = true;
    autoLoad = true;
    settings = {
      autoEnableSources = true;
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        {
          name = "buffer";
          keywordLength = 3;
        }
        {
          name = "path";
          keywordLength = 3;
        }
      ];

      mapping = {
        "<Up>" = "cmp.mapping.select_prev_item()";
        "<Down>" = "cmp.mapping.select_next_item()";
        "<Tab>" = "cmp.mapping.select_next_item()";
        "<S-Tab>" = "cmp.mapping.select_prev_item()";
        "<CR>" = ''
          cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = true
          })'';
        "<S-Up>" = "cmp.mapping.scroll_docs(-4)";
        "<S-Down>" = "cmp.mapping.scroll_docs(4)";
        "<C-d>" = "cmp.mapping.open_docs()";
      };

      window = {
        completion = {
          border = "solid";
        };
        documentation = {
          border = "solid";
        };
      };
    };
  };

  plugins = {
    cmp-nvim-lsp.enable = true; # lsp
    cmp-buffer.enable = true;
    cmp-path.enable = true; # file system paths
    cmp_luasnip.enable = true; # snippets
  };
}
