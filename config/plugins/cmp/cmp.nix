{
  plugins = {
    cmp = {
      enable = true;

      settings = {
        autoEnableSources = true;

        snippet = {
          expand = "luasnip";
        };

        sources = [
          {
            name = "nvim_lsp";
            priority = 1000;
          }
          {
            name = "buffer";
            keywordLength = 3;
            priority = 850;
          }
          { name = "cmdline"; }
          {
            name = "path";
            keywordLength = 3;
          }
          { name = "vsnip"; }
          {
            name = "luasnip";
            keywordLength = 3;
          }
          {
            name = "calc";
          }
        ];

        formatting = {
          fields = [
            "abbr"
            "kind"
            "menu"
          ];
        };

        mapping = {
          "<Up>" = "cmp.mapping.select_prev_item()";
          "<Down>" = "cmp.mapping.select_next_item()";
          "<Tab>" = "cmp.mapping.select_next_item()";
          "<S-Tab>" = "cmp.mapping.select_prev_item()";
          "<CR>" =
            "cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = false
            })";
          "<S-Up>" = "cmp.mapping.scroll_docs(-4)";
          "<S-Down>" = "cmp.mapping.scroll_docs(4)";
          "<C-d>" = "cmp.mapping.open_docs()";
          "<C-e>" = "cmp.mapping.close()";
        };

        window = {
          completion.__raw = ''
            cmp.config.window.bordered({
              border = "bold";
              winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
            })
          '';
          documentation.__raw = ''
            cmp.config.window.bordered({
              winhighlight = "Normal:Normal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None";
            })
          '';
        };
      };
    };

    cmp-buffer.enable = true;
    cmp-cmdline.enable = true;
    cmp_luasnip.enable = true;
    cmp-path.enable = true;
    cmp-vsnip.enable = true;
    cmp-calc.enable = true;
    lspkind = {
      enable = true;
      mode = "symbol";
      cmp = {
        enable = true;
        maxWidth = 50;
        menu = {
          nvim_lsp = "[LSP]";
          buffer = "[BUF]";
          calc = "[CLC]";
          path = "[PTH]";
          luasnip = "[LSN]";
        };
      };
    };
  };
}
