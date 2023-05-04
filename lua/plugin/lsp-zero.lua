local keymap = require("utils")
local M = {}
M[1] = "VonHeikemen/lsp-zero.nvim"
M.config = function()
	local lsp_zero = require("lsp-zero")
	local cmp = require("cmp")
	lsp_zero.preset("recommended")
	local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	capabilities.textDocument.colorProvider = {
		dynamicRegistration = true,
	}
	keymap("n", "<leader>q", "lua vim.lsp.buf.code_action()")
	keymap("n", "<leader>d", "lua vim.lsp.buf.definition()")
	keymap("n", "<leader>s", "lua vim.lsp.buf.hover()")
	keymap("n", "<leader>i", "lua vim.lsp.buf.implementation()")
	keymap("n", "<leader>sh", "lua vim.lsp.buf.signature_help()")
	keymap("n", "<leader>td", "lua vim.lsp.buf.type_definition()")
	keymap("n", "<leader>r", "lua vim.lsp.buf.references()")
	keymap("n", "<leader>ds", "lua vim.lsp.buf.document_symbol()")
	keymap("n", "<leader>ws", "lua vim.lsp.buf.workspace_symbol()")
	keymap("n", "<leader>dn", "lua vim.diagnostic.goto_next()")
	keymap("n", "<leader>dp", "lua vim.diagnostic.goto_prev()")

	lsp_zero.set_preferences({ set_lsp_keymaps = false, cmp_capabilities = capabilities })
	lsp_zero.setup_nvim_cmp({
		mapping = {
			["<C-up>"] = cmp.mapping.select_prev_item(),
			["<C-down>"] = cmp.mapping.select_next_item(),
			-- Add tab support
			["<S-Tab>"] = cmp.mapping.select_prev_item(),
			["<Tab>"] = cmp.mapping.select_next_item(),
			["<S-up>"] = cmp.mapping.scroll_docs(-4),
			["<S-down>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.close(),
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Insert,
				select = true,
			}),
		},
		snippet = {
			expand = function(args)
				--require('luasnip').lsp_expand(args.body)
				vim.fn["vsnip#anonymous"](args.body)
			end,
		},
		sources = {
			{ name = "path",     priority = 2 },
			{ name = "nvim_lsp", priority = 10 },
			{ name = "vsnip",    priority = 10 },
			{ name = "buffer",   keyword_length = 2, priority = 5 },
			--{ name = "luasnip", keyword_length = 2, priority = -1 },
			{ name = "crates",   priority = 11 },
		},
	})
	lsp_zero.ensure_installed = {
		"tailwindcss",
		"lua_ls",
		"rust_analyzer",
		"cssls",
		"pyright",
		"intelephense",
		"jsonls",
		"html",
		"dockerls",
		"docker_compose_language_service",
		"bashls",
		"rnix",
		"sqlls",
		"taplo",
		"lemminx",
		"yamlls",
	}
	lsp_zero.format_on_save({
		servers = {
			["lua_ls"] = { "lua" },
			["rust_analyzer"] = { "rust" },
			["tailwindcss"] = { "css" },
		},
	})
	Rust_lsp = lsp_zero.build_options("rust_analyzer", {})
	lsp_zero.setup()
end

M.dependencies = {
	--LSP Deps
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	--CMP Deps
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-buffer",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/vim-vsnip-integ",
	"L3MON4D3/LuaSnip",
}
return M
