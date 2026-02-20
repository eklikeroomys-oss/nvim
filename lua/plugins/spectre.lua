return {
    {
        'nvim-pack/nvim-spectre',
        version = "*",
        dependencies = {
            {
                'nvim-lua/plenary.nvim',
                version = "*",
            }
        },
        cmd = "Spectre",
        keys = {
            { "-rf", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', desc = "Find/Replace In File" },
            { "-rp", '<cmd>lua require("spectre").open({select_word=true})<CR>', desc = "Find/Replace In Project" },
        },
        opts = {}
    }
}
