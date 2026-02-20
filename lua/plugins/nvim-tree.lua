return {
    {
        'nvim-tree/nvim-tree.lua',
        version = "*",
        dependencies = {
            {
                'nvim-tree/nvim-web-devicons',
                version = "*",
            }
        },
        keys = {
            { "-t", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" }
        },
        opts = {
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        }
    }
}
