return {
    {
        'stevearc/aerial.nvim',
        version = "*",
        keys = {
            { "-a", "<cmd>AerialToggle!<cr>", desc = "Open Aerial" }
        },
        opts = {
        },
        -- Optional dependencies
        dependencies = {
            {
                "nvim-treesitter/nvim-treesitter",
                version = "*",
            },
            {
                "nvim-tree/nvim-web-devicons",
                version = "*",
            }
        },
    }
}
