return {
	{
		"tpope/vim-fugitive",
		lazy = true,
		cmd = "Git",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end
	},
}
