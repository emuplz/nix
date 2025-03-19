{ pkgs, ... }:

{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        nixd.enable = true;
	rust_analyzer = {
		enable = true;
		installCargo = true;
		installRustc = true;
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
