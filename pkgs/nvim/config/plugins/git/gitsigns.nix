{ 
	plugins.gitsigns = { 
		enable = true;

	};
	
	keymaps = [
	{
		mode = ["n" "v"];
		key = "<leader>gb";
		action = ":Gitsigns blame_line<CR>";
		options = {
			silent = true;
			desc = "Toggle [b]lame line";
		};
	}
	{
		mode = ["n" "v"];
		key = "<leader>gs";
		action = ":Gitsigns stage_hunk<CR>";
		options = {
			silent = true;
			desc = "[S]tage hunk";
		};
	}
	{
		mode = ["n" "v"];
		key = "<leader>gu";
		action = ":Gitsigns reset_hunk<CR>";
		options = {
			silent = true;
			desc = "[U]ndo hunk";
		};
	}
	];
}
