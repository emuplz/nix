{
	plugins.octo = {
		enable = true;
		settings = {
			picker = "fzf-lua";
		};
	};	
	keymaps = [
		{
			mode = "n";
			key = "<leader>gi";
			action = "<cmd>Octo issue list<CR>";
			options = {
				desc = "List Issues";
			};
		}
		{
			mode = "n";
			key = "<leader>gp";
			action = "<cmd>Octo pr list<CR>";
			options = {
				desc = "List PRs";
			};
		}
		{
			mode = "n";
			key = "<leader>gr";
			action = "<cmd>Octo repo list<CR>";
			options = {
				desc = "List Repos";
			};
		}
	];
}
