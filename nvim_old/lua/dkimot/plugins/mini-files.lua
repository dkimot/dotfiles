return {
	"echasnovski/mini.files",
	version = "*",
	config = function()
		require("mini.files").setup()

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>ee",
			"<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>",
			{ desc = "Toggle file explorer" }
		)
	end,
}
