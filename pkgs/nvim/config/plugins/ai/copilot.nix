{ pkgs, ... }:
{
	plugins = {
		avante = {
			enable = true;
            package = pkgs.vimPlugins.avante-nvim.overrideAttrs {
				version = "main";
				src = pkgs.fetchFromGitHub {
				  owner = "yetone";
				  repo = "avante.nvim";
				  rev = "1c8cac1958cdf04b65942f23fa5a14cc4cfae44e";
				  hash = "sha256-UXt8c2esrAE9SzaQGRGZ4hdkKsYuo1Ftvn+JR80W15I=";
              };
                                 nvimSkipModule = [
                "avante.providers.ollama"
                "avante.providers.vertex_claude"
                "avante.providers.azure"
                "avante.providers.copilot"
              ];
			};
			settings = {
				provider = "copilot_o3_mini";
				copilot = {
					model = "o3";
				};
				vendors = {
					copilot_o3 = {
						__inherited_from = "copilot";
						model = "o3";
					};
					copilot_o4_mini = {
						__inherited_from = "copilot";
						model = "o4-mini";
					};
					copilot_o3_mini = {
						__inherited_from = "copilot";
						model = "o3-mini";
					};
				};
				behaviour = {
					auto_suggestions = false;
					auto_set_highlight_group = true;
					auto_set_keymaps = true;
					auto_apply_diff_after_generation = false;
					support_paste_from_clipboard = false;
				};
				hints.enabled = false;
				file_selector = {
					provider = "telescope";
					provider_opts = {
						get_filepaths.__raw = ''
							function(params)
								local cwd = params.cwd ---@type string
								local selected_filepaths = params.selected_filepaths ---@type string[]
								local cmd = string.format("rg --files --hidden -g !.git")
								local output = vim.fn.system(cmd)
								local filepaths = vim.split(output, "\n", { trimempty = true })
								return vim.iter(filepaths):filter(function(filepath)
										return not vim.tbl_contains(selected_filepaths, filepath)
									end
								):totable()
							 end
								 '';
					};
				};
			};
		};

		copilot-lua = {
			enable = true;
			settings = {
				suggestion.enabled = false;
				panel.enabled = false;
			};
		};
	};
}

