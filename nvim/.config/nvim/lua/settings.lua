local options = {
	-- User Interface
	number = true,
	termguicolors = true,
	cmdheight = 2,
	cursorline = true,
	signcolumn = "yes",
	splitbelow = false,
	splitright = true,
	scrolloff = 5,

	-- Indentation
	expandtab = true,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	smartindent = true,

	-- Searching
	ignorecase = true,
	smartcase = true,

	-- Misc
	swapfile = false,
	updatetime = 300,
	completeopt = "menu,menuone,noselect",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
