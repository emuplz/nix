{ ... }: {
  imports = [
    # General Configuration
    ./settings.nix
    ./keymaps.nix

    # Themes
    ./plugins/themes

    # Editor
    ./plugins/editor/treesitter.nix
    ./plugins/editor/cmp.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/flash.nix
    ./plugins/editor/autopairs.nix

    ./plugins/editor/sleuth.nix
    ./plugins/editor/tmux-navigator.nix

    # LSP
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/trouble.nix

    # Git
    ./plugins/git/neogit.nix
    ./plugins/git/gitsigns.nix
    ./plugins/git/diffview.nix
    ./plugins/git/octo.nix

    # Utils
    ./plugins/utils/overseer.nix
    ./plugins/utils/fzf-lua.nix
    ./plugins/utils/whichkey.nix
  ];
}
