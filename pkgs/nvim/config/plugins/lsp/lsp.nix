{ ... }:

{
  diagnostic.settings = {
    virtual_text = true;
    underline = true;
    update_in_insert = true;
    signs = false;
  };
  plugins = {

    lsp = {
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        gh_actions_ls = {
          enable = true;
          package = null;
        };
        jsonls.enable = true;
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
