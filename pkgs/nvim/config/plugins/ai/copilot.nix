{ pkgs, ... }:
{
	plugins.copilot-lua = {
		enable = true;
		settings = {
			suggestion.autoTrigger = true;
		};
	};
	plugins.codecompanion = {
		enable = true;
		package = pkgs.vimUtils.buildVimPlugin {
			pname = "codecompanion.nvim";
			version = "head";
			src = pkgs.fetchFromGitHub {
				owner = "olimorris";
				repo = "codecompanion.nvim";
				rev = "57bc5689a64a15b12251a8cd3c28dddd0d52c0cc";
				sha256 = "sha256-8m1vt5TnMRGgxPUX1/yLVR81/3Xo5FQFyK9L0yWr30Q=";
			};
			doCheck = false;
			nvimSkipModule = [
				# Optional provider dependencies
				"codecompanion.providers.diff.mini_diff"
				"codecompanion.providers.actions.telescope"
				"codecompanion.providers.actions.mini_pick"
				# Requires setup call
				"codecompanion.actions.static"
				"codecompanion.actions.init"
				# Test
				"minimal"
			];
		};
		settings = {
			adapters = {
				copilot = {
					__raw = ''
						function()
						return require("codecompanion.adapters").extend("copilot", {
								schema = { model = { default = "claude-3.7-sonnet" } }
							})
						end
					'';
				};
			};
			strategies = {
				chat = {
					slash_commmands.file = {
          					callback = "strategies.chat.slash_commands.file";
					  	description = "Select a file using Telescope";
					  	opts = {
					    		provider = "telescope";
					    		contains_code = true;
					  	};
					};
				};
			};
		};
	};
}
