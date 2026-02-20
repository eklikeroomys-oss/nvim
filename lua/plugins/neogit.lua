return {
    {
        "NeogitOrg/neogit",
        version = "*",
        command = "Neogit",
        keys = {
            { "-gb", ':Neogit branch <CR>', desc = "Git Branch" },
            { "-gc", ':Neogit commit <CR>', desc = "Git Commit" },
            { "-gd", ':Neogit diff <CR>', desc = "Git Diff" },
            { "-gf", ':Neogit fetch <CR>', desc = "Git Fetch" },
            { "-gi", ':Neogit ignore <CR>', desc = "Git Ignore" },
            { "-gl", ':Neogit log <CR>', desc = "Git Log" },
            { "-gm", ':Neogit merge <CR>', desc = "Git Merge" },
            { "-gp", ':Neogit pull <CR>', desc = "Git Pull" },
            { "-gP", ':Neogit push <CR>', desc = "Git Push" },
            { "-gr", ':Neogit revert <CR>', desc = "Git Revert" },
            { "-gs", ':Neogit <CR>', desc = "Git Status" },
            { "-gS", ':Neogit stash <CR>', desc = "Git Stash" },
            { "-gt", ':Neogit tag <CR>', desc = "Git Tag" },
            { "-gw", ':Neogit worktree <CR>', desc = "Git Tag" },
        },
        dependencies = {
            {
                "nvim-lua/plenary.nvim",         -- required
                version = "*",
            },
            {
                "sindrets/diffview.nvim",        -- optional - Diff integration
                version = "*",
            },
            {
                "nvim-telescope/telescope.nvim", -- optional
                version = "*",
            },
        },
    }
}
