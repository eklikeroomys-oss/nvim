return {
    {
        'hrsh7th/nvim-cmp',
        version = "*",
        dependencies = {
            {
                'saadparwaiz1/cmp_luasnip',
                version = "*",
                dependencies = {
                    {
                        'L3MON4D3/LuaSnip',
                        version = "*",
                        build = "make install_jsregexp"
                    },
                }
            },
            {
                'hrsh7th/cmp-nvim-lsp',
                version = "*",
                dependencies = {
                    {
                        'neovim/nvim-lspconfig',
                        version = "*",
                    }
                },
            },
            {
                'hrsh7th/cmp-buffer',
                version = "*",
            },
            {
                'hrsh7th/cmp-path',
                version = "*",
            },
            {
                'hrsh7th/cmp-nvim-lsp-signature-help',
                version = "*",
            }
        },
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' },
                    { name = 'nvim_lsp_signature_help' },
                }),
            })
        end
    }
}
