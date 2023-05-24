local M = {}
M[1] = "zbirenbaum/copilot.lua"
M.config = function()
	require("copilot").setup({
		panel = {
			enabled = false,
		},
		suggestion = {
			enabled = false,
		},
		copilot_node_command = "node",
		server_opts_overrides = {},
	})
end

return M
