return {
	"zaldih/themery.nvim",
	dependencies = {
		"ellisonleao/gruvbox.nvim",
		"bluz71/vim-nightfly-guicolors",
		"folke/tokyonight.nvim",
	},
	priority = 1000,
	config = function()
		local themery = require("themery")

		themery.setup({
			themes = { "gruvbox", "nightfly", "tokyonight" },
			themeConfigFile = "~/.config/nvim/lua/dkimot/plugins/colorscheme.lua",
		})

		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

		-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme gruvbox")
vim.g.theme_id = 1
-- end themery block
	end,
}
