return {
    init_options = {
        cache = {
            directory = vim.fn.stdpath('cache') .. "/ccls",
        },
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
