{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        keymap.preset = "super-tab";
        sources = {
          default = [
            "lsp"
            "buffer"
            "path"
          ];
        };
        completion = {
          ghost_text.enabled = true;
          menu.winblend = 30;
        };
      };
    };
    blink-compat = {
      enable = true;
      autoLoad = true;
      settings.impersonate_nvim_cmp = true;
    };
  };
}
