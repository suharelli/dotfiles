require("jester").setup({
    terminal_cmd = ":split | terminal"
})

vim.keymap.set("n", "<leader>jr", ":lua require\"jester\".run()<CR>")
vim.keymap.set("n", "<leader>jt", ":lua require\"jester\".run_file()<CR>")
