{
  plugins.blink-cmp = {
    enable = true;
    settings.sources.providers = {
      copilot = {
        async = true;
        module = "blink-copilot";
        name = "copilot";
        score_offset = 100;
# Optional configurations
        opts = {
          max_completions = 3;
          max_attempts = 4;
          kind = "Copilot";
          debounce = 750;
          auto_refresh = {
            backward = true;
            forward = true;
          };
        };
      };
    };
    settings.sources.default = [
      "lsp"
      "copilot"
      "buffer"
      "path"
    ];
  };

  plugins.blink-copilot.enable = true;
  plugins.blink-copilot.autoLoad = true;

  plugins.blink-compat.enable = true;
  plugins.blink-compat.autoLoad = true;
  plugins.blink-compat.settings.impersonate_nvim_cmp = true;
}
