{ pkgs, config, inputs, ... }:

{

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";

  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;
    settings = {
      "theme" = "tokyonight_moon";
      "font-family" = "Monaspace Neon";
      "font-size" = 15;
      "font-thicken" = true;
      "macos-option-as-alt" = true;
      "macos-titlebar-style" = "hidden";
      "window-padding-x" = 8;
      "window-padding-y" = 8;
      "background-opacity" = 0.95;
      "background-blur" = true;
    };
  };

  programs.nixvim = {
    enable = true;
  } // (import ../pkgs/nvim/config {
    inherit pkgs;
  });

  home.file.ghostty-theme = {
    enable = true;
    source = "${pkgs.vimPlugins.tokyonight-nvim}/extras/ghostty";
    target = "${config.xdg.configHome}/ghostty/themes";
  };

  programs.git = {
    enable = true;
  };

  programs.tmux = {
    enable = true;
    keyMode = "vi";
    historyLimit = 10000;
    customPaneNavigationAndResize = true;
    plugins = with pkgs; [
      tmuxPlugins.sensible
      tmuxPlugins.vim-tmux-navigator
    ];
    extraConfig = ''
      set -g default-command $SHELL
      set -g default-terminal "tmux-256color"
      set -ag terminal-overrides ",xterm-256color:RGB"

      set -g mouse on
      set -g base-index 1

      # Better splitting commands.
      unbind '"'
      unbind %
      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      bind c new-window -c "#{pane_current_path}"

      source-file ${pkgs.vimPlugins.tokyonight-nvim}/extras/tmux/tokyonight_moon.tmux

      set -g status-position top
    '';
  };

  home.packages = with pkgs; [ 
    ripgrep
    fd
  ];

}
