return {
    {
        "GustavEikaas/easy-dotnet.nvim",
        version = "*",
        dependencies = {
            {
                "nvim-lua/plenary.nvim",
                version = "*",
            },
            {
                'folke/snacks.nvim',
                version = "*",
            },
        },
        keys = {
            { "-Nb", ":Dotnet build solution quickfix<CR>", "Build Solution" },
            { "-Nr", ":Dotnet run profile<CR>", "Run Profile" },
            { "-Nd", ":Dotnet debug profile<CR>", "Debug Profile" },
            { "-NTt", ":Dotnet testrunner<CR>", "Toggle Window" },
            { "-NTR", "<leader>R", "Run all" },
            { "-NTr", "<leader>r", "Run current" },
            { "-NTd", "<leader>d", "Debug current" },
            { "-NTg", "<leader>g", "Go to file" },
            { "-NTC", "<C-c>", "Cancel" },
        },
        config = function()
            require("easy-dotnet").setup({
                notifications = {
                    handler = false
                }
            })
        end
    }
}
