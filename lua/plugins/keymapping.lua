local set = vim.keymap.set

-- telescope
set("n", "<leader>fs", ":Telescope find_files<CR>")
set("n", "<leader>fw", ":Telescope git_files<CR>")
set("n", "<leader>fg", ":Telescope live_grep<CR>")
set("n", "<leader>fo", ":Telescope oldfiles<CR>")

-- tree
set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")

-- buffers
set("n", "<S-j>", ":bp<CR>")
set("n", "<S-k>", ":bn<CR>")
set("n", "<S-x>", ":bd<CR>")

-- markdown preview
set("n", "<leader>mp", ":MarkdownPreviewToggle<CR>")
