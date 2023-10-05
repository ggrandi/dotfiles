return {
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				asm_lsp = {},
			},
		},
	},
	-- { "williamboman/mason.nvim",
	-- 	opts = function(_, opts)
	-- 		table.insert(opts.ensure_installed, "asmfmt")
	-- 	end,
	-- },
	-- {
	-- 	"nvimtools/none-ls.nvim",
	-- 	optional = true,
	-- 	opts = function(_, opts)
	-- 		local nls = require("null-ls")
	-- 		table.insert(opts.sources, nls.builtins.formatting.asmfmt)
	-- 	end,
	-- },
	-- {
	-- 	"stevearc/conform.nvim",
	-- 	optional = true,
	-- 	opts = {
	-- 		formatters_by_ft = {
	-- 			["assembly"] = { { "asmfmt" } },
	-- 		},
	-- 	},
	-- },
}
