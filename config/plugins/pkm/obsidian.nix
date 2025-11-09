{ pkgs, ... }:
{
  plugins.obsidian = {
    enable = true;
    settings = {
      completion = {
        min_chars = 2;
      };
      legacy_commands = false;
      workspaces = [
        {
          name = "work";
          path = "~/vault/work";
        }
      ];
    };
  };
}
