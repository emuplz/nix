{
  plugins.fzf-lua = {
    enable = true;
    profile = "telescope";
    settings = {
      fzf_colors = true;
      grep = {
        hidden = true;
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --glob '!.git' -e";
      };
      winopts.preview = {
        layout = "vertical";
        vertical = "up:62%";
        winopts = {
          number = true;
          signcolumn = "yes";
        };
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "files";
        options = {
          desc = "Find project file";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "Run previous command";
        };
      };
      "<leader>," = {
        action = "buffers";
        options = {
          desc = "Find buffer";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Search project for text";
        };
      };
      "<leader>b/" = {
        action = "lgrep_curbuf";
        options = {
          desc = "Search buffer for text";
        };
      };
      "<leader>c/" = {
        action = "lsp_workspace_symbols";
        options = {
          desc = "Search workspace for symbol";
        };
      };
      "<leader>cR" = {
        action = "lsp_references";
        options = {
          desc = "Search workspace for symbol";
        };
      };
      "<leader>cD" = {
        action = "lsp_workspace_diagnostics";
        options = {
          desc = "Search workspace for diagnostic";
        };
      };
    };
  };
}
