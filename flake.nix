{
  description = "iAmFoxik NeoVim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    home-manager.url = "github:nix-community/home-manager";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [inputs.home-manager.flakeModules.home-manager];

      systems = [
        "x86_64-linux"
      ];

      perSystem =
        { system, pkgs, ... }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs; # or alternatively, set `pkgs`
            module = import ./config; # import the module directly
            # You can use `extraSpecialArgs` to pass additional arguments to your module files
            extraSpecialArgs = {
              # inherit (inputs) foo;
            };
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };

          
        };
    };
}
