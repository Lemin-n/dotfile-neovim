local M = {}

M[1] = "jose-elias-alvarez/null-ls.nvim"

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
				vim.lsp.buf.format({ async = false })
			end,
		})
	end
end

M.config = function()
	local null_ls = require("null-ls")
	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.formatting.prettier.with({
				filetypes = {
					"javascript",
					"typescript",
					"css",
					"scss",
					"html",
					"json",
					"yaml",
					"markdown",
					"graphql",
					"md",
					"txt",
				},
			}),
		},
		on_attach = on_attach,
	})
end

return M
