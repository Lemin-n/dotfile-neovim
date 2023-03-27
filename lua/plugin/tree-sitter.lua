local M = {}
M[1] = "nvim-treesitter/nvim-treesitter"

M.config = function()
require("nvim-treesitter.configs").setup({
		ensure_installed = { "rust", "typescript", "javascript", "json", "lua", "tsx", "toml", "yaml", "css", "html" },
		sync_install = true,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
	})
	local parser = require("nvim-treesitter.parsers").get_parser_configs()
	parser.tsx.filename_to_parsername = { "javascript", "typescript.tsx" }


end

return M
