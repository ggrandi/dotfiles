return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.filetype.add({
				pattern = {
					[".*/git/config.*"] = "gitconfig",
				},
			})
		end,
	},
}
