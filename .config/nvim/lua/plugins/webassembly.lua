return {

	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			table.insert(opts.ensure_installed, "tree-sitter-cli")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		init = function(_)
			local C = require("nvim-treesitter.parsers").get_parser_configs()

			C.wat = {}
		end,
	},
}
