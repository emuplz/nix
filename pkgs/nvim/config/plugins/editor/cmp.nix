{
  plugins.blink-cmp = {
    enable = true;
    settings.keymap.preset = "super-tab";
    settings.sources.providers = {
      copilot = {
        name = "copilot";
        module = "blink-copilot";
        async = true;
        score_offset = 100;
      };
      codecompanion = {
        name = "codecompanion";
        module = "codecompanion.providers.completion.blink";
        score_offset = 100;
      };
    };
    settings.sources.default = [
      "lsp"
      "codecompanion"
      "buffer"
      "path"
    ];
    settings.completion = {
      ghost_text.enabled = true;
    };
  };

  plugins.blink-copilot.enable = true;
  plugins.blink-copilot.autoLoad = true;

  plugins.blink-compat.enable = true;
  plugins.blink-compat.autoLoad = true;
  plugins.blink-compat.settings.impersonate_nvim_cmp = true;
}
