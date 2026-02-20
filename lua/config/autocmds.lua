-- Disable folding in telescope window:
vim.api.nvim_create_autocmd('FileType',
{
    pattern = {"TelescopeResults"},
    command = "setlocal nofoldenable",
})

-- Lua Coding Style:
vim.api.nvim_create_autocmd('BufEnter',
{
    pattern = { "*.lua" },
    callback = function()
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.expandtab = true
    end
})

-- C Coding Style:
vim.api.nvim_create_autocmd('BufEnter',
{
    pattern = { "*.c", "*.h" },
    callback = function()
        vim.opt.tabstop = 2
        vim.opt.shiftwidth = 2
        vim.opt.expandtab = true
    end
})

-- XML Coding Style:
vim.api.nvim_create_autocmd('BufEnter',
{
    pattern = { "*.xml", "*.xsd", "*.xsl", "*.xslt", "*.svg", "*.xsf", "*.ins", "*.tsp", "*.nuspec", "*.csproj" },
    callback = function()
        vim.opt.tabstop = 2
        vim.opt.shiftwidth = 2
        vim.opt.expandtab = true
    end
})

-- Shell Coding Style:
vim.api.nvim_create_autocmd('BufEnter',
{
    pattern = { "*.sh" },
    callback = function()
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.expandtab = true
    end
})

-- Python Coding Style:
vim.api.nvim_create_autocmd('BufEnter',
{
    pattern = { "*.py" },
    callback = function()
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.expandtab = true
    end
})
