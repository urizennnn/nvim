vim.g.mapleader = " "
vim.keymap.set("n", "<leader>", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>t", "gt")
vim.keymap.set("n", "<C-v>", '"+p"')
vim.keymap.set("n", "<C-c>", '"+y"')
vim.keymap.set("n", "<C-r>", vim.cmd.Lazy)
vim.keymap.set("n", "M", vim.cmd.Mason)
vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)
