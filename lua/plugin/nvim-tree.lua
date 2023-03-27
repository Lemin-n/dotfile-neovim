local M = {}

M[1] = "kyazdani42/nvim-tree.lua"

local function open_nvim_tree(data)
	local directory = vim.fn.isdirectory(data.file) == 1
	if not directory then
		return
	end
	vim.cmd.cd(data.file)
	require("nvim-tree.api").tree.open()
end

function M.config ()
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
require("nvim-tree").setup({
		sync_root_with_cwd = true,
		view = {
			adaptive_size = true,
			width = 15,
			side = "left",
		},
		diagnostics = {
			enable = true,
		},
		actions = {
		open_file = {
			resize_window = true
		},
		},


	})
end
return M
