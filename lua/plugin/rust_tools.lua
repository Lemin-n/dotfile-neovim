local M = {}
M[1] = "simrat39/rust-tools.nvim"

M.config = function()
	local opts = {
		tools = {
			autoSetHints = true,
			runnables = {
				use_telescope = true,
			},
			inlay_hints = {
				parameter_hints_prefix = "",
				other_hints_prefix = "",
			},
		},
		server = Rust_lsp,
	}
	require("rust-tools").setup(opts)

end

M.dependencies = {"VonHeikemen/lsp-zero.nvim"}
return M
