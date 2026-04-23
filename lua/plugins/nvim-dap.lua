return {
    {
        "mfussenegger/nvim-dap",
        version = "*",
        keys = {
            { "-dC", ":DapContinue<CR>", desc = "Start/continue debugging" },
            { "-do", ":DapStepOver<CR>", desc = "Step over" },
            { "-di", ":DapStepInto<CR>", desc = "Step into" },
            { "-dO", ":DapStepOut<CR>", desc = "Step out" },
            { "-db", ":DapToggleBreakpoint<CR>", desc = "Toggle breakpoint" },
            { "-dBC", ":DapClearBreakpoints<CR>", desc = "Clear breakpoints" },
            { "-dT", ":DapTerminate<CR>", desc = "Terminate debugger" },
            { "-dW", ":DapToggleRepl<CR>", desc = "Toggle DAP REPL" },
        },
        config = function ()
            vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
            vim.fn.sign_define('DapBreakpointCondition', {text='⭕', texthl='', linehl='', numhl=''})
            vim.fn.sign_define('DapStopped', {text='➜', texthl='WarningMsg', linehl='', numhl=''})
        end
    }
}
