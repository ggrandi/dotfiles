return {
	{
		"mfussenegger/nvim-dap",
		opts = {
			adapters = {
				firefox = {
					type = "executable",
					command = "node",
					args = {
						vim.fn.expand("~/.vscode-oss/extensions/firefox-devtools.vscode-firefox-debug-2.9.1-universal/dist/"),
					},
				},
			},
		},
		configurations = {
			typescript = {
				{
					name = "Debug with Firefox",
					type = "firefox",
					request = "launch",
					reAttach = true,
					url = "http://localhost:3000",
					webRoot = "${workspaceFolder}",
					firefoxExecutable = "/usr/bin/firefox",
				},
			},
		},
	},
}
