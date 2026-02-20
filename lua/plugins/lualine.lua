return {
    {
        'nvim-lualine/lualine.nvim',
        version = "*",
        dependencies = {
            {
                'nvim-tree/nvim-web-devicons',
                version = "*",
            },
        },
        opts = {
            options = {
                icons_enabled = true,
                theme = 'tokyonight-night',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { { 'mode', fmt = function(str) return str:sub(1,1) end } },
                lualine_b = {'branch', 'diff'},
                lualine_c = {'diagnostics'},
                lualine_x = {'searchcount', 'selectioncount', '%B'},
                lualine_y = {'encoding', 'fileformat', 'filetype', 'filesize'},
                lualine_z = {'location', '%o', 'progress'}
            },
            inactive_sections = {
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    }
}
