return {
	-- add c to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "c" })
			end
		end,
	},

	{
		"neovim/nvim-lspconfig",

		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				clangd = {},
			},
		},
	},
}
