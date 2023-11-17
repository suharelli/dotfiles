-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	open_on_setup = true,
	view = {
        	adaptive_size = false,
            width = 30,
            mappings = {
                list = {
                    {key = "l", action = "edit"},
                    {key = "h", action = "close_node"},
                }
            },
	},
    update_focused_file = {
        enable = true,
        debounce_delay = 15,
        update_root = true,
        ignore_list = {},
    },
})


vim.keymap.set("", "<F8>", ":NvimTreeToggle<CR>")
