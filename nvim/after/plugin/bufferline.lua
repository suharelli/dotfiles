require("bufferline").setup{
    options = {
        numbers = "buffer_id",
        separator_style = "slant",
        middle_mouse_command = "bdelete! %d",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end

    }
}
