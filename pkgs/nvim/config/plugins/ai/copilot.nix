{
	plugins.copilot-lua.enable = true;
	plugins.codecompanion = {
		enable = true;
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
		};
	};
}
