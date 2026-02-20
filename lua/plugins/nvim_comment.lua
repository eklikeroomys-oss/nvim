return {
    {
        'terrortylor/nvim-comment',
        version = "*",
        keys = {
            { "-c", ":'<,'>CommentToggle<CR>", desc = "Comment Selection", mode = "v" },
            { "-c", ":CommentToggle<CR>", desc = "Comment Line" },
        },
        config = function()
            require('nvim_comment').setup({
                comment_empty = false,
            })
        end,
        cmd = "CommentToggle"
    }
}
