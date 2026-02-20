return {
    {
        'folke/which-key.nvim',
        version = "*",
        lazy = false,
        keys = {
            -- Buffers:
            { "-bD", ':let currentBuf = bufnr("%") | bufdo if bufnr("%") != currentBuf && &filetype != "tagbar" && &filetype != "NvimTree" | bd | endif<CR>', desc = "Delete All But Current Buffer" },
            { "-bd", ":bd<CR>", desc = "Delete Current Buffer" },
            { "-bn", ":bn<CR>", desc = "Next Buffer" },
            { "-bp", ":bp<CR>", desc = "Previous Buffer" },
            -- Editing/Formatting:
            { "-eif", "mzgg=G`z", desc = "Indent File" },
            { "-eip", "=ip", desc = "Indent Paragraph" },
            { "-epd", "dip", desc = "Delete Current Paragraph" },
            { "-ewd", "diW", desc = "Delete Current Word" },
            -- Jumps:
            { "-jb", "\15", desc = "Jump Backward" },
            { "-jf", "\t", desc = "Jump Forward" },
            -- Make:
            { "-mc", "<cmd>silent make | copen<CR>", desc = "Build - Default" },
            { "-md", "<cmd>silent make doxygen | copen<CR>", desc = "Build - Doxygen" },
            -- Selection:
            { "-S", "gv", desc = "Reselect Previous Selection" },
            { "-rf", ':lua require("utils").custom.find_replace_selection(vim.fn.expand("<cword>"))<CR>', desc = "Find/Replace In Selection", mode = "v" },
        },
        opts = {
            plugins = {
                marks = false, -- shows a list of your marks on ' and `
                registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
                presets = {
                    operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
                    motions = true, -- adds help for motions
                    text_objects = true, -- help for text objects triggered after entering an operator
                    windows = true, -- default bindings on <c-w>
                    nav = true, -- misc bindings to work with windows
                    z = true, -- bindings for folds, spelling and others prefixed with z
                    g = true, -- bindings for prefixed with g
                },
            },
        },
        config = function()
            local wk = require("which-key")
            wk.add({
                { "-b", group = "Buffers" },
                { "-D", group = "Diff Keys" },
                { "-e", group = "Editing/Formatting" },
                { "-ei", group = "Indentation" },
                { "-ep", group = "Paragraph" },
                { "-ew", group = "Word" },
                { "-f", group = "Fuzzy Search" },
                { "-g", group = "Git" },
                { "-j", group = "Jump" },
                { "-l", group = "Language Server" },
                { "-r", group = "Find/Replace" },
                { "-T", group = "Trouble" },
            })
        end
    }
}
