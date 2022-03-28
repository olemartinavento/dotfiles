local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "maintained",
	sync_install = false,
	ignore_install = {},
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
		disable = {},
	},
	playground = {
		enable = true,
		disable = {},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
	},
})

local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
ft_to_parser.twig = "html" -- the someft filetype will use the python parser and queries.

-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
-- parser_config.twig = {
-- 	install_info = {
-- 		url = "~/Code/tree-sitter-twig", -- local path or git repo
-- 		files = { "src/parser.c" },
-- 		-- optional entries:
-- 		branch = "html", -- default branch in case of git repo if different from master
-- 		-- generate_requires_npm = false, -- if stand-alone parser without npm dependencies
-- 		-- requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
-- 	},
-- 	filetype = "twig", -- if filetype does not match the parser name
-- }
