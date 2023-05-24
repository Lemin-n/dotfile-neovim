local M = {}
M[1] = "iamcco/markdown-preview.nvim"
M.build = function()
	vim.fn["mkdp#util#install"]()
end
return M
