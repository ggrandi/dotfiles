return {
	-- add ocaml to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "ocaml" })
			end
		end,
	},

	{
		"neovim/nvim-lspconfig",

		dependencies = { "ocaml/ocaml-lsp" },
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				ocamllsp = {},
			},
		},
	},
}
