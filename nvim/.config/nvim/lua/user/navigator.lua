local status_ok, navigator = pcall(require, "navigator")
if not status_ok then
	return
end

navigator.setup()

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-h>", "<CMD>lua require('Navigator').left()<CR>", opts)
map("n", "<C-k>", "<CMD>lua require('Navigator').up()<CR>", opts)
map("n", "<C-l>", "<CMD>lua require('Navigator').right()<CR>", opts)
map("n", "<C-j>", "<CMD>lua require('Navigator').down()<CR>", opts)
-- map('n', "<C-p>", "<CMD>lua require('Navigator').previous()<CR>", opts)