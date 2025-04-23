{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
#    blink-cmp-avante
  ];

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
      avante_commands = {
        name = "avante_commands";
        module = "blink.compat.source";
        score_offset = 90;
      };
      avante_files = {
        name = "avante_files";
        module = "blink.compat.source";
        score_offset = 100;
      };
      avante_mentions = {
        name = "avante_mentions";
        module = "blink.compat.source";
        score_offset = 1000;
      };
    };

    settings.sources = {
	default = [
          "lsp"
          "copilot"
          "buffer"
          "path"
          "avante_commands"
          "avante_files"
          "avante_mentions"
        ];
    };
    settings.completion = {
      ghost_text.enabled = true;
    };
    settings.completion.menu = {
      winblend = 30;
    };
  };

  plugins.blink-copilot.enable = true;
  plugins.blink-copilot.autoLoad = true;

  plugins.blink-compat.enable = true;
  plugins.blink-compat.autoLoad = true;
  plugins.blink-compat.settings.impersonate_nvim_cmp = true;
}
