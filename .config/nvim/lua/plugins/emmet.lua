return {
	{
		"mattn/emmet-vim",
		init = function()
			vim.g.user_emmet_leader_key = "<leader>y"
			vim.g.user_emmet_mode = "n"
		end,
	},
	{
		"folke/which-key.nvim",
		opts = {
			defaults = {
				["<leader>y"] = "+ emmet",
			},
		},
	},
}
