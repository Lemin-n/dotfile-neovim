vim.o.signcolumn = "yes"
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.shortmess = "filnxtToOFc"
vim.o.mapleader = ","
vim.o.number = true
vim.o.updatetime = 100
vim.o.rnu = true
vim.o.mouse = "a"
vim.o.scrolloff = 3
vim.g.rustfmt_autosave = 1
vim.g.mapleader = ","
vim.g.syntax = "off"
vim.diagnostic.config({
	update_in_insert = true,
})
vim.g.copilot_filetypes = {
	["*"] = "v:true",
}

vim.cmd([[highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6]])
vim.cmd([[highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6]])
vim.cmd([[highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0]])
vim.cmd([[highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0]])
vim.cmd([[highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE]])
vim.cmd([[highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4]])
