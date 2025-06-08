{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        auto_install = true;
        highlight = {
          enable = true;
          additional_vim_regex_highighting = false;
        };
      };
    };
    treesitter-context.enable = true;
  };
}
