local Adaptor = nil
local Success = nil
local custom = os.getenv("HOME") .. "/code_companion_custom.lua"

local file=io.open(custom, 'r')
if file then
    print("Loading codecompanion adapter from " .. custom)
    local content = file:read("*a")
    file:close()

    local chunk, load_err = load(content, custom)
    if not chunk then
        print("Could not load adapter from " .. custom .. ": " .. (load_err or "unknown error"))
    end

    if type(chunk) == "function" then
        Success, Adaptor = pcall(chunk)
        if not Success then
            print("Could not parse adapter " .. custom .. ": " .. (Adaptor or "unknown error")) -- Adaptor holds the error message on pcall failure
        end
    end
elseif os.getenv("GEMINI_API_KEY") ~= nil then
    Adaptor = {
        strategies = {
            chat = {
                adapter = "gemini",
            },
            inline = {
                adapter = "gemini",
            },
            cmd = {
                adapter = "gemini",
            }
        },
    }
end

if Adaptor ~= nil then
    return {
        {
            'olimorris/codecompanion.nvim',
            version = "*",
            dependencies = {
                {
                    'nvim-lua/plenary.nvim',
                    version = "*",
                },
                {
                    'nvim-treesitter/nvim-treesitter',
                    version = "*",
                },
            },
            config = function ()
                require("codecompanion").setup(Adaptor)
            end
        }
    }
else
    return {}
end
