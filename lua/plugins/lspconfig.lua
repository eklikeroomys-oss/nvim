return {
    {
        'neovim/nvim-lspconfig',
        version = "*",
        dependencies = {
            {
                'hrsh7th/cmp-nvim-lsp',
                version = "*",
            }
        },
        keys = {
            { "-ld", ":Telescope lsp_definitions<CR>", desc = "Go To Definition" },
            { "-lD", ":Telescope lsp_implementations<CR>", desc = "Go To Implementation" },
            { "-lf", ":Telescope lsp_references<CR>", desc = "Find All References" },
            { "-li", vim.diagnostic.open_float, desc = "Current Line Diagnostics" },
            { "-lI", ":Telescope diagnostics<CR>", desc = "Full Diagnostics" },
            { "-lp", vim.lsp.buf.hover, desc = "Peek Definition" },
            { "-lq", vim.lsp.buf.code_action, desc = "Quick Fix Action" },
            { "-lr", vim.lsp.buf.rename, desc = "Rename Symbol" },
            { "-lR", ":LspRestart<CR>", desc = "Restart LSP Server" },
        },
        config = function()
            vim.lsp.config('*', {
                capabilities = require('cmp_nvim_lsp').default_capabilities(),
            })

            vim.lsp.config('clangd', require('lsp.clangd'))
            vim.lsp.enable('clangd')

            vim.lsp.config('lua_ls', require('lsp.lua_ls'))
            vim.lsp.enable('lua_ls')

            vim.lsp.config('lemminx', require('lsp.lemminx'))
            vim.lsp.enable('lemminx')

            vim.lsp.config('bashls', require('lsp.bashls'))
            vim.lsp.enable('bashls')

            vim.lsp.config('pyright', require('lsp.pyright'))
            vim.lsp.enable('pyright')

            vim.lsp.config('omnisharp', require('lsp.omnisharp'))
            vim.lsp.enable('omnisharp')
        end
    }
}
