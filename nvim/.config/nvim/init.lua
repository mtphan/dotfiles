--[[ init.lua ]]

-- This line makes pacman-installed global Arch Linux vim packages work.
vim.cmd [[ source /usr/share/nvim/archlinux.vim ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
-- vim.g.mapleader = ","
-- vim.g.localleader = "\\"

-- IMPORTS
-- require('vars')      -- Variables
require('opts')         -- Options
-- require('keys')      -- Keymaps
require('plug')         -- Plugins

-- PLUGINS: Add this section
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup{
	compile = {
		enabled = false,
		path = vim.fn.stdpath "cache" .. "/catppuccin"
	},
	integrations = {
		nvimtree = true
	}
}
vim.cmd [[ colorscheme catppuccin ]]

require("nvim-tree").setup{
	open_on_setup = true,
	view = {
		width = 30
	},
	renderer = {
		group_empty = true,
		highlight_git = true,
		highlight_opened_files = "all",
		icons = {
			show = {
				git = true
			}
		}
	}
}

local ctp_feline = require('catppuccin.groups.integrations.feline')
require("feline").setup({
	components = ctp_feline.get(),
})

