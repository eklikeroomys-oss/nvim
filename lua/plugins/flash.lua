return {
    {
        "folke/flash.nvim",
        version = "*",
        event = "VeryLazy",
        opts = {},
        keys = {
            { 's', mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" }
        }
    }
}
