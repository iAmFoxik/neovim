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
          settings.formatting.command = [ "nixpkgs-fmt" ];
        };

        qmlls = {
          enable = true;
          settings = {
            cmd = [ "qmlls" "-E" ];
          };
        };
        clangd.enable = true;
        hls = {
          enable = true;
          installGhc = false;
        };

        julials = {
          enable = true;
          cmd = [
            "julia"
            "--startup-file=no"
            "--history-file=no"
            "-e"
            "using Pkg; Pkg.activate(\"@LanguageServer\"); using LanguageServer, SymbolServer; runserver()"
          ];
          package = null;
          filetypes = [ "julia" ];
          autostart = true;
          settings.single_file_support = true;
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
