local set = vim.keymap.set

-- noremap：不进行递归映射，silent：不显示命令的执行结果
local opt = { noremap = true, silent = true }

-- leader mapping
vim.g.mapleader = " "

-- quit / save
set("n", "<S-w>", ":w<CR>")
set("n", "wq", ":wq<CR>")
set("n", "<S-q>", ":q<CR>")
set("n", "<S-q><S-q>", ":q!<CR>")

-- buffer
set("n", "<S-j>", ":bp<CR>")
set("n", "<S-k>", ":bn<CR>")
set("n", "<S-x>", ":bd<CR>")

-- add line with Enter/Shift-enter
set("n", "<CR>", "o<Esc>", opt)
set("n", "<S-CR>", "<S-o><Esc>", opt)

-- paste
set("n", "<C-p>", ":pu<CR>", opt)

-- absolute line jump
-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

-- window
set("n", "<leader>v", "<C-w>v", opt)
set("n", "<leader>s", "<C-w>s", opt)
set("n", "<C-h>", "<C-w>h", opt)
set("n", "<C-j>", "<C-w>j", opt)
set("n", "<C-k>", "<C-w>k", opt)
set("n", "<C-l>", "<C-w>l", opt)

-- Move selected lines with ctrl-j or ctrl+k
set("v", "<C-j>", ":m '>+1<CR>gv=gv")
set("v", "<C-k>", ":m '<-2<CR>gv=gv")
set("n", "<C-j>", ":m .+1<CR>==")
set("n", "<C-k>", ":m .-2<CR>==")

-- back / forward
set("n", "<leader>[", "<C-o>", opt)
set("n", "<leader>]", "<C-i>", opt)
