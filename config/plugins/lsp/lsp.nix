{ pkgs, ... }:

{
  diagnostic.settings = {
    virtual_lines = {
        current_line = true;
    };
    virtual_text = false;
  };
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        copilot.enable = true;
        nixd.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        zls = {
            enable = true;
            settings = {
                enable_build_on_save = true;
            };
        };
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
  };
}
