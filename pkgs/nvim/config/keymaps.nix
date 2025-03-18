{
  globals.mapleader = " ";

  keymaps = [
    # Telescope mappings
    { mode = "n"; key = "<leader>ff"; action = "<cmd>Telescope find_files<CR>"; options.desc = "Find files"; }
    { mode = "n"; key = "<leader>fg"; action = "<cmd>Telescope live_grep<CR>"; options.desc = "Live grep"; }
    { mode = "n"; key = "<leader>fb"; action = "<cmd>Telescope buffers<CR>"; options.desc = "Buffers"; }
    # Neogit mapping
    { mode = "n"; key = "<leader>gg"; action = "<cmd>Neogit<CR>"; options.desc = "Neogit"; }
    # Flash mapping
    { mode = "n"; key = "<leader>jj"; action = "<cmd>lua require('flash').jump()<CR>"; options.desc = "Flash jump"; }
  ];
}
