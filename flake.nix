{
  description = "Config for neovim";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};

        nvimConfig = pkgs.stdenv.mkDerivation {
          name = "nvim-config";
          src = ./.;
          installPhase = ''
            mkdir -p $out
            cp -r * $out/
          '';
        };

        nvim = pkgs.wrapNeovim pkgs.neovim-unwrapped {
          configure = {
            customRC = ''
              set runtimepath^=${nvimConfig}
              lua vim.opt.runtimepath:append("${nvimConfig}")
              lua << EOF
              require("config.options")
              require("config.autocmds")
              require("config.keymaps")
              require("core.lsp")
              require("core.lazy")
              EOF
              lua vim.opt.runtimepath:append("${nvimConfig}")
            '';
            autowrapRuntimeDeps = true;
          };
        };
      in {
        packages.default = nvim;

        devShells.default = pkgs.mkShell {
          buildInputs = [
            nvim
            pkgs.ripgrep
            pkgs.git
            pkgs.python3
            pkgs.lua
            pkgs.stylua
          ];
        };
      }
    );
}
