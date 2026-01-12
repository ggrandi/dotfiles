return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		---@type CatppuccinOptions
		opts = {
			float = {
				transparent = false,
				solid = true,
			},
		},
		config = function(_plugin, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
}
