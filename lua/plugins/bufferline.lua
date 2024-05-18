--[[
可以通过定义的快捷键等方式来对已打开的标签页之间进行跳转
--]]
return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup{}
	end
}
