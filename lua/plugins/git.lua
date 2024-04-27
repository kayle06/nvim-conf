return {
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
		cmd = "Git",
		config = function()
			vim.cmd.cnoreabbrev([[git Git]])
			vim.keymap.set({ "n", "i" }, "<C-i>g", ":Git<CR>", { noremap = true})
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end
	},
}
