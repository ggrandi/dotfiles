return {
	"Julian/lean.nvim",
	event = { "BufReadPre *.lean", "BufNewFile *.lean" },

	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-lua/plenary.nvim",
	},

	opts = {
		lsp = {
			on_attach = require("lazyvim.util.lsp").on_attach,
		},
		mappings = true,
	},

	-- 	"hrsh7th/nvim-cmp",
	-- 	dependencies = {},
	-- 	---@param opts cmp.ConfigSchema
	-- 	opts = function(_, opts)
	-- 		local cmp = require("cmp")
	-- 		opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
	-- 			{ name = "nvim_lsp" },
	-- 		}))
	-- 	end,
	-- },
}
