-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set({ "v", "n" }, "j", "gj", { desc = "move down a line" })
vim.keymap.set({ "v", "n" }, "k", "gk", { desc = "move up a line" })

vim.keymap.set({ "n", "i" }, "<M-j>", "<cmd>m .+1<cr>", { desc = "Move line down" })
vim.keymap.set({ "n", "i" }, "<M-k>", "<cmd>m .-2<cr>", { desc = "Move line up" })

vim.keymap.set({ "n", "i" }, "<M-J>", "<cmd>t .<cr>", { desc = "Copy line down" })
vim.keymap.set({ "n", "i" }, "<M-K>", "<cmd>t .-1<cr>", { desc = "Copy line down" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", "")
vim.keymap.set("n", "<right>", "")
vim.keymap.set("n", "<up>", "")
vim.keymap.set("n", "<down>", "")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set({ "n" }, "<leader>l", "<cmd>Lazy<cr>", { desc = "Open [L]azy" })
