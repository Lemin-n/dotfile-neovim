local M = {}

M[1] = "navarasu/onedark.nvim"

M.config = function ()
	local onedark = require("onedark")
	onedark.setup{
		style = "deep",
		transparent = true,
		lualine = {
        		transparent = true
    		},
		code_style = {
			keywords = "bold",
			functions = "bold",
		},

	}
	onedark.load()
end

return M
