{ pkgs, ... }:
{
	plugins = {
		avante = {
			enable = true;
			settings = {
				provider = "copilot";
				copilot = {
					model = "o3-mini";
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
					provider_opts = { };
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

