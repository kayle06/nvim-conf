return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			ensure_installed = { "lua_ls", "pyright" }
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						completion = {
							callSnippet = "Replace",
						},
					},
				},
			})
			lspconfig.pyright.setup({})
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, {})
		end,
	},
	-- {
	-- 	"williamboman/nvim-lsp-installer",
	-- 	config = function()
	-- 		require("nvim-lsp-installer").setup ({
	-- 			automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
	-- 			ui = {
	-- 				icons = {
	-- 					server_installed = "✓",
	-- 					server_pending = "➜",
	-- 					server_uninstalled = "✗"
	-- 				}
	-- 			}
	-- 		})
	-- 	end
	-- }
}
