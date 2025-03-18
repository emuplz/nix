{ pkgs, ... }:

{
    plugins.neogit.enable = true;
    keymaps = [
   	{ mode = "n"; key = "<leader>gg"; action = "<cmd>Neogit cwd=%:p:h<CR>"; options.desc = "Neogit"; }
    ];
}

