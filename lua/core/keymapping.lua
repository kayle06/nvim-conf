vim.g.mapleader = " "
local set = vim.keymap.set

set("n", "<S-w>", ":w<CR>")
set("n", "wq", ":wq<CR>")
set("n", "<S-q>", ":q<CR>")
set("n", "<S-q><S-q>", ":q!<CR>")

