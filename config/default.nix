{
  imports = [
    ./commands.nix
    ./filetype.nix
    ./opts.nix
    ./diagnostics.nix
    ./keymaps.nix
    ./ui.nix

    # LSP
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/crates.nix

    # CMP
    ./plugins/cmp/cmp.nix

    # Editor
    ./plugins/editor/barbar.nix
    ./plugins/editor/colorizer.nix
    ./plugins/editor/dressing.nix
    ./plugins/editor/editorconfig.nix
    # ./plugins/editor/indentmini.nix
    # ./plugins/editor/mini.nix
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/nerdy.nix
    ./plugins/editor/overseer.nix
    ./plugins/editor/surround.nix
    ./plugins/editor/telescope.nix
    ./plugins/editor/toggleterm.nix
    ./plugins/editor/treesitter.nix

    # git
    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix
  ];
}
