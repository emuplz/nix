_: {
  imports = [
    ./settings.nix
    ./keymaps.nix

    ./plugins/themes

    ./plugins/ai/sidekick.nix

    ./plugins/editor/treesitter.nix
    ./plugins/editor/treesitter-context.nix

    ./plugins/editor/todo-comments.nix
    ./plugins/editor/autopairs.nix
    ./plugins/editor/blink.nix
    ./plugins/editor/sleuth.nix
    ./plugins/editor/conform.nix

    ./plugins/lsp/lsp.nix
    ./plugins/lsp/trouble.nix

    ./plugins/git/neogit.nix
    ./plugins/git/gitsigns.nix
    ./plugins/git/diffview.nix

    ./plugins/pkm/obsidian.nix

    ./plugins/utils/overseer.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
  ];
}
