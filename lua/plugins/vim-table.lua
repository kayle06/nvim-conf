return {
	"dhruvasagar/vim-table-mode",
	config = function ()
		vim.keymap.set("n", "<leader>tm", ":TableModeToggle<CR>")
	end
}
