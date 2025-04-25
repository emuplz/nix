{ pkgs, ... }:

{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        terraformls.enable = true;
        nixd.enable = true;
	rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
        "<leader>cr" = "rename";
        "<leader>ca" = "code_action";
      };
    };
  };
}
