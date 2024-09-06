if true then
	return {}
end

return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "verilog" })
			end
		end,
	},

	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			servers = {
				svls = {},
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				verilog = { "verible" },
			},
		},
	},
}
