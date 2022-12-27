vim.g.mapleader = " "

vim.keymap.set("n", "<leader>v", ":vsp<CR>")
vim.keymap.set("n", "<leader>s", ":sp<CR>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
