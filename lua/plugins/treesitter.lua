return {
    {
        'nvim-treesitter/nvim-treesitter',
        version = "*",
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { "c", "cpp", "lua", "c_sharp", "bash", "xml", "python", "vimdoc", "regex", "markdown", "markdown_inline" },
                sync_install = false,
                highlight = {
                    enable = true
                }
            })
        end
    }
}
