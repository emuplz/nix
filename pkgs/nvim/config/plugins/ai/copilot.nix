{ pkgs, ... }:
{
	plugins = {
		avante = {
			enable = true;
			settings = {
				provider = "copilot";
				copilot = {
					model = "o1-preview";
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

