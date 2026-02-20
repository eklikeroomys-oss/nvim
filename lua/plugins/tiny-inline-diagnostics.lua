return {
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        version = "*",
        event = "LspAttach",
        priority = 1000,
        config = function()
            require('tiny-inline-diagnostic').setup()
            vim.diagnostic.config({
                virtual_text = false,
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = '',
                        [vim.diagnostic.severity.WARN] = '',
                        [vim.diagnostic.severity.HINT] = '',
                        [vim.diagnostic.severity.INFO] = '',
                    },
                }
            }) -- Only if needed in your configuration, if you already have native LSP diagnostics
        end
    }
}
