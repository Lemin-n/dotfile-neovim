local M = {}

M[1] = "saecki/crates.nvim"

M.opts = {
	popup = {
		border = "rounded",
		show_version_date = true,
	},
	null_ls = {
		enabled = true,
		name = "Crates",
	},
}

M.dependencies = { "null-ls.nvim", "plenary.nvim" }
return M
