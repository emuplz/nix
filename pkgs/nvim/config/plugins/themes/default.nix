{ pkgs, ... }:
{
  colorschemes.tokyonight = {
    enable = true;
    settings = {
      style = "moon";
      transparent = true;
    };
  };
  plugins.lualine.enable = true;
  plugins.notify.enable = true;
  plugins.zen-mode.enable = true;
  plugins.zen-mode.settings = {
	plugins.tmux.enabled = true;
  };
  plugins.oil.enable = true;
  plugins.oil-git-status.enable = true;
  extraPlugins = with pkgs.vimPlugins; [ 
    nvzone-typr
  ];
  extraConfigLua = ''
	require('typr').setup({})
  '';
  plugins.comment.enable = true;
  plugins.web-devicons.enable = true;
  # plugins.transparent.enable = true;
  plugins.render-markdown.enable = true;
  plugins.none-ls.enable = true;
  plugins.obsidian = {
    enable = true;
    settings = {
      workspaces = [
        {
          name = "work";
          path = "~/obsidian/work";
        }
      ];
    };
  };
}
