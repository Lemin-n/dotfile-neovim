local M = {}

M[1] = "goolord/alpha-nvim"

local function footer()
	  local datetime = os.date "%d-%m-%Y %H:%M:%S"
	  local plugins_text = "   v"
	    .. vim.version().major
	    .. "."
	    .. vim.version().minor
	    .. "."
	    .. vim.version().patch
	    .. "   "
	    .. datetime
	  local fortune = require "alpha.fortune"
	  local quote = table.concat(fortune(), "\n")
	  return plugins_text .. "\n" .. quote
end
M.config =  function ()
	local alpha = require("alpha")

  	local dashboard = require("alpha.themes.dashboard")
	  dashboard.section.header.val = {
	    [[        /\          /\          /\       ]],
	    [[     /\//\\/\    /\//\\/\    /\//\\/\    ]],
	    [[  /\//\\\///\\/\//\\\///\\/\//\\\///\\/\ ]],
	    [[ //\\\//\/\\///\\\//\/\\///\\\//\/\\///\\]],
	    [[ \\//\/                            \/\\//]],
	    [[  \/                                  \/ ]],
	    [[  /\                                  /\ ]],
	    [[ //\\  Neovim IDE with LSP and DAP   //\\]],
	    [[ \\//                                \\//]],
	    [[  \/                                  \/ ]],
	    [[  /\                                  /\ ]],
	    [[ //\\/\                            /\//\\]],
	    [[ \\///\\/\//\\\///\\/\//\\\///\\/\//\\\//]],
	    [[  \/\\///\\\//\/\\///\\\//\/\\///\\\//\/ ]],
	    [[      \/\\//\/    \/\\//\/    \/\\//\/   ]],
	    [[         \/          \/          \/      ]],
	  }

	  dashboard.section.buttons.val = {
	    dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	    dashboard.button("p", "  Find project", ":lua require'telescope'.extensions.project.project{display_type = 'full' } <CR>"),
	    dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	    dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	    dashboard.button("c", "  Configuration", ":e $MYVIMRC<CR>"),
	    dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
	  }


	  dashboard.section.footer.val = footer()
	  dashboard.section.footer.opts.hl = "Type"
	  dashboard.section.header.opts.hl = "Include"
	  dashboard.section.buttons.opts.hl = "Keyword"
	  dashboard.opts.opts.noautocmd = true
	  alpha.setup(dashboard.opts)
end
M.dependencies = {"nvim-telescope/telescope.nvim"}
return M
