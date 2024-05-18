return {
	"lukas-reineke/headlines.nvim",
	dependencies = "nvim-treesitter/nvim-treesitter",
	-- config = true, -- or `opts = {}`
	config = function()
		require("headlines").setup()
	end,
}
