local M = {}

local list = {
	dashboard = {
		comment = "Alpha dashboard, easy setup",
		git = "goolord/alpha-nvim",
	},
	emmet = {
		comment = "HTML Boilerplate generator",
		git = "mattn/emmet-vim",
	},
}
table.insert(M, "williamboman/mason.nvim")
table.insert(M, "williamboman/mason-lspconfig.nvim")
table.insert(M, "neovim/nvim-lspconfig")
table.insert(M, "hrsh7th/nvim-cmp")
table.insert(M, "hrsh7th/cmp-nvim-lsp")
table.insert(M, "hrsh7th/cmp-vsnip")
table.insert(M, "hrsh7th/vim-vsnip-integ")
table.insert(M, "hrsh7th/cmp-path")
table.insert(M, "hrsh7th/cmp-buffer")
table.insert(M, "hrsh7th/vim-vsnip")
table.insert(M, "hrsh7th/vim-vsnip")
table.insert(M, "saadparwaiz1/cmp_luasnip")
table.insert(M, "nvim-tree/nvim-web-devicons")
table.insert(M, "nvim-lua/plenary.nvim")
table.insert(M, "L3MON4D3/LuaSnip")
table.insert(M, "rust-lang/rust.vim")
table.insert(M, "nvim-telescope/telescope-project.nvim")
table.insert(M, "windwp/nvim-ts-autotag")
table.insert(M, require("plugin.onedark"))
table.insert(M, require("plugin.tree-sitter"))
table.insert(M, require("plugin.lualine"))
table.insert(M, require("plugin.null-ls"))
table.insert(M, require("plugin.presence"))
table.insert(M, require("plugin.nvim-tree"))
table.insert(M, require("plugin.crates"))
table.insert(M, require("plugin.lsp-zero"))
table.insert(M, require("plugin.rust_tools"))
table.insert(M, require("plugin.autopairs"))
table.insert(M, require("plugin.md_preview"))
table.insert(M, require("plugin.alpha"))
table.insert(M, require("plugin.telescope"))
return M
