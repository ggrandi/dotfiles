if true then
	return {}
end

return {
	-- add sql to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "sql" })
			end
		end,
	},

	{
		"neovim/nvim-lspconfig",
		-- dependencies = { "ocaml/ocaml-lsp" },
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				sqlls = {},
			},
		},
	},

	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				sql = { "pg_format" },
			},
		},
	},
}
