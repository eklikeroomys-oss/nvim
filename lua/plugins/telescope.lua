return {
    {
        'nvim-telescope/telescope.nvim',
        version = "*",
        dependencies = {
            {
                'nvim-lua/plenary.nvim',
                version = "*",
            }
        },
        keys = {
            { "-fb", ":Telescope buffers<CR>", desc = "Find Buffer" },
            { "-ff", ":Telescope live_grep<CR>", desc = "Find In Project" },
            { "-fo", ":Telescope find_files<CR>", desc = "Open File" },
            { "-fp", ":Telescope pickers<CR>", desc = "Resume Previous" },
            { "-fw", ":Telescope grep_string<CR>", desc = "Find Current Word In Project" },
        },
        cmd = "Telescope",
        config = function()
            require('telescope').setup({
                defaults = {
                    vimgrep_arguments = {
                        "rg",
                        "-L",
                        "--color=never",
                        "--no-heading",
                        "--with-filename",
                        "--line-number",
                        "--column",
                        "--smart-case",
                        "--no-ignore",
                        "--no-binary"
                    },
                    layout_strategy = 'vertical',
                    cache_picker = {
                        num_pickers = 10,
                    },
                    file_ignore_patterns = {
                        '^system/',
                        'build/',
                        'doc/',
                        'docs/',
                        'target/',
                        'template_.*/',
                        'env/',
                        '%.o$',
                        '%.obj$',
                        '%.ko$',
                        '%.so$',
                    },
                }
            })
        end
    }
}
