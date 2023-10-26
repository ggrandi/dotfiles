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
	-- {
	-- 	"mfussenegger/nvim-dap",
	-- 	config = function()
	-- 		require("dap").adapters.asmdbg = {
	-- 			id = "asmdbg",
	-- 			type = "executable",
	-- 			executable = vim.fn.expand(
	-- 				"~/.vscode/extensions/ms-vscode.cpptools-1.17.5-linux-x64/debugAdapters/bin/OpenDebugAD7"
	-- 			),
	-- 		}
	--
	-- 		require("dap").configurations.asm = {
	-- 			{
	-- 				name = "Launch file",
	-- 				type = "asmdbg",
	-- 				request = "launch",
	-- 				program = function()
	-- 					local file = vim.fn.getcwd() .. "/" .. vim.fn.input("Path to executable: ")
	--
	-- 					vim.notify(file)
	--
	-- 					return file
	-- 				end,
	-- 				cwd = "${workspaceFolder}",
	-- 				stopAtEntry = true,
	-- 			},
	-- 		}
	-- 	end,
	-- },
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
