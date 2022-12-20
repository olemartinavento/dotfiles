-- Remap leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Turn off hlsearch
-- vim.keymap.set("n", "<Leader>/", ":nohls<CR>", { silent = true })

-- Paste in visual mode and keep clipboard contents
vim.keymap.set("x", "<Leader>p", "\"_dP")

-- Copy to system clipboard
vim.keymap.set("n", "<Leader>y", "\"+y")
vim.keymap.set("v", "<Leader>y", "\"+y")
vim.keymap.set("n", "<Leader>Y", "\"+Y")

-- Open splits and tabs
vim.keymap.set("n", "<Leader>t", ":tabedit<CR>", { silent = true })
vim.keymap.set("n", "<Leader>v", ":vsplit<CR>", { silent = true })
vim.keymap.set("n", "<Leader>h", ":split<CR>", { silent = true })

-- Make J and K work on wrapped lines
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
