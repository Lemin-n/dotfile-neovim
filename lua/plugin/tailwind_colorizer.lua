local M = {}
M[1] = "themaxmarchuk/tailwindcss-colors.nvim"
M.config = function()
	require("tailwindcss-colors").setup()
end
M.dependencies = {

	"hrsh7th/nvim-cmp",
}
return M
