{
	plugins.todo-comments.enable = true;
	
	keymaps = [
		{
			mode = "n";
			key = "<leader>st";
			action = "<cmd>TodoTelescope<CR>";
			options = {
				desc = "Search TODOs";
			};
		}
		{
			mode = "n";
			key = "]t";
			action = "<cmd>lua require('todo-comments').jump_next()<CR>";
			options = {
				desc = "Next todo comment";
			};
		}
		{
			mode = "n";
			key = "[t";
			action = "<cmd>lua require('todo-comments').jump_prev()<CR>";
			options = {
				desc = "Previous todo comment";
			};
		}
	];
}
