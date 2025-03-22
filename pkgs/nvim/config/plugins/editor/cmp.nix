{
  plugins.blink-cmp = {
    enable = true;
    settings.sources.providers = {
      copilot = {
        async = true;
        module = "blink-copilot";
        name = "copilot";
        score_offset = 100;
      };
    };
  };
}
