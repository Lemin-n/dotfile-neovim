local plugin_err, plugins = pcall(require, "plugin")

local vimopts_err, _ = pcall(require, "vimopts")
local keymap_err, _ = pcall(require, "keymap")
-- Ensure install lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

if not plugin_err then
	return print(plugin_err)
end
if not vimopts_err then
	return print(vimopts_err)
end

if not keymap_err then
	return print(keymap_err)
end

local lazy_plugin
vim.api.nvim_create_autocmd({ "CursorHold" }, { callback = function()

vim.diagnostic.open_float(nil, {focuseable = false})
end
}

)
require("lazy").setup(plugins, {
	install = {
		colorscheme = {"onedark"}
	},
	ui = {
		border = "rounded",
	}
})
