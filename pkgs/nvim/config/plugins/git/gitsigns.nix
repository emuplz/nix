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
	];
}
