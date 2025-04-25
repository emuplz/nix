{ pkgs, ... }:

{
	plugins.trouble.enable = true;
	
	keymaps = [
		{
			mode = "n";
			key = "<leader>xx";
			action = "<cmd>TroubleToggle<CR>";
			options = {
				desc = "Toggle Trouble";
			};
		}
		{
			mode = "n";
			key = "<leader>xw";
			action = "<cmd>TroubleToggle workspace_diagnostics<CR>";
			options = {
				desc = "Workspace Diagnostics";
			};
		}
		{
			mode = "n";
			key = "<leader>xd";
			action = "<cmd>TroubleToggle document_diagnostics<CR>";
			options = {
				desc = "Document Diagnostics";
			};
		}
		{
			mode = "n";
			key = "<leader>xl";
			action = "<cmd>TroubleToggle loclist<CR>";
			options = {
				desc = "Location List";
			};
		}
		{
			mode = "n";
			key = "<leader>xq";
			action = "<cmd>TroubleToggle quickfix<CR>";
			options = {
				desc = "Quickfix List";
			};
		}
		{
			mode = "n";
			key = "<leader>xr";
			action = "<cmd>TroubleToggle lsp_references<CR>";
			options = {
				desc = "LSP References";
			};
		}
	];
}
