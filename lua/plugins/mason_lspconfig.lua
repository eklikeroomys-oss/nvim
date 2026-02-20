return {
    {
        'williamboman/mason-lspconfig.nvim',
        version = "*",
        dependencies = {
            {
                'williamboman/mason.nvim',
                version = "*",
                opts = {}
            },
            {
                'neovim/nvim-lspconfig',
                version = "*",
            }
        },
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "bashls",
                    "lemminx",
                    "lua_ls",
                    "pyright",
                },
            })
        end
    }
}
