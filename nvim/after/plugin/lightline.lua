vim.g.lightline = {
    colorscheme = "wombat",
    active = {
        left = {{"mode", "paste"}, {"gitbranch", "readonly", "filename", "modified"}}
    },
    component_function = {
        gitbranch = "FugitiveHead"
    },
    separator = { left = "\u{e0b0}", right = "\u{e0b2}" },
    subseparator = { left = "\u{e0b1}", right = "\u{e0b3}" },
    enable = { statusline = 1, tabline = 0 },
}
