return {
    {
        'ahmedkhalf/project.nvim',
        version = "*",
        config = function()
            require('project_nvim').setup({
                detection_methods = { "pattern" },
                patterns = { ".git" },
            })
        end
    }
}
