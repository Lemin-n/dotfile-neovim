M = {}
function M.keymap(maptype, keybind, binding, mode)
	mode = mode or { nowait = true, silent = true, noremap = true }
	vim.api.nvim_set_keymap(maptype, keybind, "<cmd>" .. binding .. "<CR>", mode)
end

function M.load_plugins(lazy_vim_module)
	local files = vim.fn.readdir("/home/lemi/.config/nvim/lua/plugin")
	for _, file in ipairs(files) do
		local file_path = "../plugin." .. string.gsub(file, ".lua", "")
		table.insert(lazy_vim_module, require(file_path))
	end
end

return M
