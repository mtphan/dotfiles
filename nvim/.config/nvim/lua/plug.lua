return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Load catppuccin theme
	use {
		"catppuccin/nvim", as = "catppuccin",
		run = ":CatppuccinCompile"
	}
	use { "kyazdani42/nvim-web-devicons", as = "nvim-web-devicons" }
	use {
		"kyazdani42/nvim-tree.lua", as = "nvim-tree",
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	}
	use { "feline-nvim/feline.nvim", as = "feline" }
end)
