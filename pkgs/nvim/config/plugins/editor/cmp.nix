{
  plugins.blink-cmp = {
    enable = true;
    settings.sources = {
      default = [ "copilot" "lsp" "buffer" "path" ];
      providers = {
        copilot = {
          async = true;
          module = "blink-cmp-copilot";
          name = "copilot";
          score_offset = 100;
        };
      };
    };
  };
}
