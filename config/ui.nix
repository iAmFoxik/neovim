{ pkgs, ... }:
let
  atomic = pkgs.vimUtils.buildVimPlugin {
    name = "atomic";
    src = pkgs.fetchFromGitHub {
      owner = "iAmFoxik";
      repo = "atomic.nvim";
      rev = "master";
      sha256 = "sha256-OnIqp2OYcZiEnpX1u/QF3f9AHGos6B8m2y3qHREVLKA=";
    };
  };
  newpaper = pkgs.vimUtils.buildVimPlugin {
    name = "newpaper";
    src = pkgs.fetchFromGitHub {
      owner = "yorik1984";
      repo = "newpaper.nvim";
      rev = "main";
      sha256 = "sha256-MkSBr4ebgR7TZrtSkx2/G8a7uuMTTCv2cZnroBaeldU=";
    };
  };
in
{
  plugins = {
    web-devicons.enable = true;
  };

  extraPlugins = [
    atomic
    newpaper
  ];
  extraConfigLua = ''
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("atomic")
  '';
}
