local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	},

	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
		  "nvim-tree/nvim-web-devicons",
		},
		config = function()
		  require("nvim-tree").setup {}
		end,
	},

	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

	{
	    "toppair/peek.nvim",
	    event = { "VeryLazy" },
	    build = "deno task --quiet build:fast",
	    config = function()
		require("peek").setup()
		vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
		vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
	    end,
	},

	{
	    "iamcco/markdown-preview.nvim",
	    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	    ft = { "markdown" },
	    build = function() vim.fn["mkdp#util#install"]() end,
	},

	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup()
		end
	}
}
local opts = {}


require("lazy").setup(plugins, opts)
