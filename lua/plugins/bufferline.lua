return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = {
            {
                'nvim-tree/nvim-web-devicons',
                version = "*",
            }
        },
        opts = {
            options = {
                numbers = "buffer_id",
                indicator = {
                    icon = '▎', -- this should be omitted if indicator style is not 'icon'
                    style = 'icon',
                },
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true
                    },
                    {
                        filetype = "tagbar",
                        text = "Tags",
                        text_align = "center",
                        separator = true
                    },
                    {
                        filetype = "aerial",
                        text = "Context",
                        text_align = "center",
                        separator = true
                    },
                },
                separator_style = "slant",
            }
        }
    }
}
