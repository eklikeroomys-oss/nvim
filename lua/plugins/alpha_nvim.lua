return {
    {
        'goolord/alpha-nvim',
        version = "*",
        config = function()
            local alpha = require('alpha')
            local dashboard = require('alpha.themes.dashboard')
            dashboard.section.header.val = {
                [[                                       __                    ]],
                [[          ___     ___    ___   __  __ /\_\    ___ ___        ]],
                [[         / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\      ]],
                [[        /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \     ]],
                [[        \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\    ]],
                [[         \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/    ]],
                '                                                              ',
                '                             ⣀⣤⣶⣦⣀⣠⣶⣤⣀⡀                       ',
                '                            ⠰⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦                      ',
                '                               ⢻⣿⣿⣿⣿⣿⣿⣿⣿⡆                     ',
                '          ⢰⣶⡄                ⣤⣠⣼⣿⣿⣿⣿⣿⣿⣿⣿⡇                     ',
                '        ⣴⣦ ⢹⣿⢿⣧                 ⠉⠛⠟⠛⠉⣩⡉⠉⠁                     ',
                '         ⢻ ⢸⣿⠈⣿⡄                 ⣸⡆  ⠉⠁ ⣀⢾⡄                 ⠰⣶',
                '  ⠈  ⣤⣶⡄ ⣾ ⢘⣯⣸⣿⡇          ⠴⢤⡀  ⢴⡄⢻⣿⣦⣤⣤⣶⠺⣿⣎⡇            ⠐⠂     ',
                ' ⣼  ⠈ ⣼⠃⠈⡟ ⣴⡄⢻⣿⡇   ⠠⣦⡀      ⠃    ⢿⣿⡿⣿⣿⣿⣿⣿⣿⠁     ⡀          ⠙⢿⣯',
                '⠾⠁ ⢲⠆ ⠸⠇⢰⡇ ⢹⠃⢸⣿⡟⠐⠁⠠⢦⣌    ⢶⡄  ⢼⣷⡄ ⠠⣷⣾⣿⣿⣿⣿⠂       ⠘⠂ ⠛⣷  ⠘⠃⠐⠂⠘⠻⠿',
                '⣀⣀   ⢰⡇ ⣸⣁⣴⣿⣦⣜⠻⣧⣀⣀⣠⣼⡟⠒       ⠈⠁  ⠓⠛⠛⢿⣿⣿⡟  ⠐⠋ ⢠⡀⢠⡿⠃       ⠐⣶⡄⠰⣧',
                '⠹⣿⡄⠈⠹⢾⢃⣾⣿⣿⣷⣿⣻⠿⠛⠛⠻⣿⣅⡛         ⠐⣦  ⣉⣹⣿⣿⣿⣿⣦⣞⣿⣷⣾⣶⡄ ⠿⠁   ⣤⡔⢿⣿⣿⡃ ⣴⡄⢹',
                '⡆⢸⡟  ⢿⣾⣿⡟⣿⡀ ⠙⡇ ⠘⠦⢹⣿⢇⣤⡀⡀         ⠸⢿⣿⣿⢿⣿⡇⠘⣻⣿⣷⢶⣼⣟⠁⣀   ⢠⡿⠃ ⠌⠙⢷⣆⠛⠑⠿',
                '⠳⠆⠁  ⣿⣿⣿⣿⣿ ⡀ ⢼⣷  ⣶⡿⢷⣼⡟⠁    ⣀⡀      ⣵⣶⡾  ⣿⡛⠙⠂⠉⢹⣾⢿⣥⣴⢂⡿⠁    ⠈⠃⢸⠇⣴',
                '⠆   ⢸⣿⣏⠉⣿⡿⠉⠉⣷⣘⣻⣶⣵⣿⢇⠜⠁      ⡐⠃     ⣠⡉⣿⠁  ⢈⡁⠐⠒⢜⡷⠉ ⠘⠃⠚⠳⠴⠆   ⠐ ⠈⠷⠈',
                '⡀   ⠘⣿⡟⢿⣿⠁  ⠉⣹⡟⣿⣿⠟   ⠐⠷   ⠸⠽⠂     ⠁⠉⠛⠁ ⠉⠈   ⢘⡁   ⠒⡄ ⠘⠁⠈⠉⠇⠠⣀ ⠁ ',
                '⠙⠃   ⠸⣿⣿⡯    ⠈⠛⡿⠃  ⣀  ⠄    ⣠⣄        ⠴⠄  ⠈⢒⣤⡉⠹⢂           ⢶⣦⣄⣀',
                '  ⠐⠆  ⠈⠻⠋⢷    ⠐⠁    ⠓  ⠁  ⠘⠻⠛⠃              ⠈⠷⢮⣤⣤⣾⣿⣧⣀⠙  ⡞⣩⡇  ⠻',
                '        ⣀         ⠈⠈     ⠿⠂           ⡴⠲⡄      ⠐⢶⡿⠿⣿⣿⣿⣿⣾⣿⣝⣻⣆⣴ ',
            }
            dashboard.section.buttons.val = {
                dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
                dashboard.button( "r", "  Recent file" , ":Telescope oldfiles<CR>"),
                dashboard.button( "f", "  Find file" , ":Telescope find_files<CR>"),
                dashboard.button( "w", "  Find word" , ":Telescope live_grep<CR>"),
                dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
            }
            dashboard.section.footer.val = "FOLLOW THE WHITE RABBIT"
            dashboard.config.opts.noautocmd = true

            vim.cmd[[autocmd User AlphaReady echo 'ready']]

            alpha.setup(dashboard.config)
        end
    }
}
