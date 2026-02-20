return {
    cmd = { os.getenv("HOME") .. "/.local/share/nvim/mason/bin/omnisharp-mono", "-z", "DotNet:enablePackageRestore=false", "--encoding", "utf-8", "--languageserver" },
    root_markers = { '.git' },
    settings = {
        useModernNet = false,
        RoslynExtensionsOptions = {
            enableDecompilationSupport = true,
        }
    },
    handlers = {
        ["textDocument/definition"] = require('omnisharp_extended').definition_handler,
        ["textDocument/typeDefinition"] = require('omnisharp_extended').type_definition_handler,
        ["textDocument/references"] = require('omnisharp_extended').references_handler,
        ["textDocument/implementation"] = require('omnisharp_extended').implementation_handler,
    },
}
