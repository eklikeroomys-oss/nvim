return {
    cmd = { 'clangd', '--header-insertion=never', '--background-index', '--background-index-priority=normal', '--clang-tidy', '--log=verbose' },
    root_markers = { '.clangd', '.git' },
}
