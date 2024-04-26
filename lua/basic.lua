local o = vim.o
local opt = vim.opt

o.number = true         -- Enable line numbers
o.relativenumber = true -- Relative line numbers
o.clipboard = "unnamed" -- Copy content to clipboard
o.hlsearch = true       -- Highlight when searching
o.tabstop = 4           -- 设定Tab占用的空间大小为4个空格
o.softtabstop = 4       -- 设定按下Tab键时占用的空间大小为4个空格
o.shiftwidth = 4
o.shiftround = true     -- 行首缩进会调整为shiftwidth的整数倍
o.timeoutlen = 300      -- Time-out time (milliseconds)

-- Highlight after copying
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
