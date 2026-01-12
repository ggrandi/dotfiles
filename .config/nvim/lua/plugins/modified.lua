return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		optional = true,
		opts = { flavour = "macchiato" },
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		optional = true,
		opts = {
			window = {
				position = "right",
			},
		},
	},
	{
		"folke/snacks.nvim",
		optional = true,
		---@type snacks.Config
		opts = {
			notifier = {
				top_down = false,
			},
			-- picker = {
			-- 	layout = { layout = { position = "right" } },
			-- },
			-- explorer = {
			-- 	replace_netrw = true,
			-- },
		},
	},
	{
		"nvim-lspconfig",
		optional = true,
		opts = {
			inlay_hints = { enabled = false },
		},
	},
	{
		"folke/which-key.nvim",
		optional = true,
		---@module "which-key"
		---@type wk.Opts
		opts = {
			sort = { "local", "order", "alphanum", "mod" },
		},
	},
	{
		"nvim-mini/mini.pairs",
		enabled = false,
	},
}
