if true then
	return {}
end

return {
	"epwalsh/obsidian.nvim",
	-- cond = function()
	--   return vim.fn.isdirectory(vim.fn.expand("%:p:h") .. "/.obsidian") == 1
	-- end,
	-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
	-- event = { "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = function()
		if not vim.fn.isdirectory(vim.fn.expand("%:p:h") .. "/.obsidian") == 1 then
			return {}
		end

		return {
			dir = vim.fn.expand("%:p"),
			mappings = {
				-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
				-- ["gf"] = require("obsidian.mapping").gf_passthrough(),
			},
		}
	end,
}
