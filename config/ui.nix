{ pkgs, ... }: let 
    atomic = pkgs.vimUtils.buildVimPlugin {
        name = "atomic";
        src = pkgs.fetchFromGitHub {
          owner = "iAmFoxik";
          repo = "atomic.nvim";
	  rev = "master";
          sha256 = "sha256-YhNxwrC9tlHQHP8ERYaZeSMmqXsZzI+uwLlXNBRRtZY=";
        };
      };
    in{
  plugins = {
    # bufferline.enable = true;
    web-devicons.enable = true;
  };

  extraPlugins =  [ atomic ];
  extraConfigLua = ''
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("atomic")
  '';
}
