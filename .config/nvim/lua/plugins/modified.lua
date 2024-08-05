local Util = require("lazyvim.util")

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			window = {
				position = "right",
			},
		},
		keys = {
			{ "<leader>E", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
			{ "<leader>e", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
		},
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			top_down = false,
		},
	},
	-- {
	-- 	"nvim-telescope/telescope.nvim",
	-- 	keys = {
	-- 		{ "<leader>fF", Util.pick.telescope("files"), desc = "Find Files (root dir)" },
	-- 		{ "<leader>ff", Util.pick.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
	-- 		{ "<leader>sG", Util.pick.telescope("live_grep"), desc = "Grep (root dir)" },
	-- 		{ "<leader>sg", Util.pick.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
	-- 	},
	-- },
}
