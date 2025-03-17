_: {
  imports = [
    # General Configuration
    ./settings.nix
    ./keymaps.nix

    # Themes
    ./plugins/themes

    # Completion
    #./plugins/cmp/cmp.nix
    #./plugins/cmp/autopairs.nix

    # Editor
    ./plugins/editor/treesitter.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/flash.nix
    ./plugins/editor/autopairs.nix

    # LSP
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/trouble.nix

    # Git
    ./plugins/git/neogit.nix
    ./plugins/git/gitsigns.nix
    ./plugins/git/diffview.nix

    # Utils
    ./plugins/utils/overseer.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
  ];
}
