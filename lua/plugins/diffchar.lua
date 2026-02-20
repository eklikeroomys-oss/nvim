return {
    {
        'rickhowe/diffchar.vim',
        version = "*",
        keys = {
            { "-DW", ":set diffopt-=iwhiteall<CR>", desc = "Don't Ignore White Space" },
            { "-Dw", ":set diffopt+=iwhiteall<CR>", desc = "Ignore White Space" },
        }
    }
}
