{
  plugins = {
    lsp-lines = {
      enable = true;
    };
    lsp-format = {
      enable = true;
    };
    lsp = {
      enable = true;
      inlayHints = true;

      servers = {
        lua_ls = {
          enable = true;
          extraOptions = {
            settings = {
              Lua = {
                format = {
                  enable = true;
                  defaultConfig = {
                    indent_style = "space";
                    indent_size = "2";
                  };
                };
              };
            };
          };
        };

        pylsp = {
          enable = true;
          extraOptions = {
            settings = {
              pylsp = {
                plugins = {
                  pycodestyle = {
                    enabled = false;
                  };
                  pyflakes = {
                    enabled = false;
                  };
                  flake8 = {
                    enabled = true;
                    maxLineLength = 120;
                  };
                  jedi_completion = {
                    fuzzy = true;
                  };
                  pylsp_mypy = {
                    enabled = true;
                    live_mode = false;
                  };
                };
              };
            };
          };
        };

        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
          settings = {
            diagnostic = {
              enable = true;
              styleLints.enable = true;
            };
            checkOnSave = true;
            procMacro.enable = true;

            inlayHints = {
              enable = true;
              showParameterNames = true;
            };
          };
        };
        nil_ls = {
          enable = true;
          settings = {
            nil = {
              formatting = {
                command ="nixpkgs-fmt";
              };
            }; 
          };
        };
        qmlls.enable = true;
        clangd.enable = true;
        hls = {
          enable = true;
          installGhc = false;
        };
      };

      keymaps = {
        silent = true;

        lspBuf = {
          "<leader>rn" = {
            action = "rename";
            desc = "Rename";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "Toggle Code Action";
          };
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gi = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gt = {
            action = "type_definition";
            desc = "Type Definition";
          };
        };

        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
}
