-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
	local keys = require("lazy.core.handler").handlers.keys
	---@cast keys LazyKeysHandler
	-- do not create the keymap if a lazy keys handler exists
	if not keys.active[keys.parse({ lhs, mode = mode }).id] then
		opts = opts or {}
		opts.silent = opts.silent ~= false
		if opts.remap and not vim.g.vscode then
			opts.remap = nil
		end
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

-- save file
-- map({ "i", "v", "n", "s" }, "<M-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
-- vim.keymap.del({ "i", "v", "n", "s" }, "<C-s>")

-- map({ "n", "v" }, "<leader>qq", ":wqa<cr>", { desc = "Save and quit neovim" })

map({ "n", "i" }, "∆", "<cmd>m .+1<cr>", { desc = "Move line down" })
map({ "n", "i" }, "˚", "<cmd>m .-2<cr>", { desc = "Move line up" })

map("v", "∆", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
map("v", "˚", ":m '<-2<cr>gv=gv", { desc = "Move line up" })

map({ "n", "i" }, "Ô", "<cmd>t .<cr>", { desc = "Copy line down" })
map({ "n", "i" }, "<M-J>", "<cmd>t .<cr>", { desc = "Copy line down" })
map({ "n", "i" }, "<M-K>", "<cmd>t .-1<cr>", { desc = "Copy line down" })

-- map("v", "<M-J>", "<cmd>t .<cr>", { desc = "Copy line down" })
-- map("v", "<M-K>", "<cmd>t .-1<cr>", { desc = "Copy line down" })
