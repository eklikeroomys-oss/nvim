return {
    init_options = {
        cache = {
            directory = os.getenv("HOME") .. "/.cache/ccls",
        },
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
