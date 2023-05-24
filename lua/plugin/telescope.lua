local M = {}
M[1] = "nvim-telescope/telescope.nvim"
M.config = function()
	require("telescope").setup({
		extensions = {
			project = {
				order_by = "asc",
				hidden_files = false,
				search_by = "title",
				sync_with_nvim_tree = true,
				base_dirs = {
					{ "~/rust_proyects/", max_depth = 4 },
					{ "~/whatsapp_bot/", max_depth = 4 },
					{ "~/website_dev/", max_depth = 4 },
					{ "~/playgrounds/", max_depth = 4 },
					{ "~/mds/SoDiRe/lib/", max_depth = 5 },
					{ "~/mds/SoDiRe/bin/", max_depth = 5 },
					{ "~/mds/", max_depth = 5 },
				},
			},
		},
	})
end
M.dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-project.nvim" }

return M
