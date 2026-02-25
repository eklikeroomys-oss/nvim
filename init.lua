function Global_Setup()
    vim.opt.compatible = false				-- VIM mode, not VI.
    vim.cmd('filetype plugin indent on')	-- Enable filetype detection.
    vim.opt.cmdheight = 2 					-- Command line height.
    vim.opt.wildmenu = true					-- Command line autocomplete menu
    vim.opt.wildmode = 'longest:full,full'	-- Complete to longest common string for command line.
    vim.opt.wildoptions = 'pum,tagfile'		-- Popup menu for command line completion.
    vim.opt.wrap = false					-- Don't wrap lines.
    vim.opt.number = true					-- Line numbers.
    vim.opt.relativenumber = false          -- Line numbers.
    vim.opt.hlsearch = true					-- Highlight search pattern.
    vim.opt.tagrelative = false				-- No relative tag paths.
    vim.opt.clipboard = 'unnamedplus'		-- Use system clipboard by default.
    vim.opt.foldmethod = 'indent'			-- Enable indent folding.
    vim.opt.foldnestmax = 2					-- Fold depth.
    vim.opt.termguicolors = true			-- Use GUI colors.
    vim.opt.ignorecase = true               -- Ignore case for search.
    vim.opt.mouse = "a"                     -- Add mouse integration.
    vim.opt.completeopt = "menu,menuone,noselect"

    -- Common coding style:
    vim.opt.fileformat = 'unix'		-- Unix-style line-endings (lf)
    vim.opt.endofline = true 		-- Newline at end of file.
    vim.opt.fixendofline = true 	-- Newline at end of file if missing.
    vim.opt.fileencoding = 'utf-8'	-- UTF-8 charset
    vim.opt.tabstop = 2 			-- Set tab width.
    vim.opt.shiftwidth = 2			-- Number of spaces for indent.
    vim.opt.expandtab = true 		-- Tab conversion to spaces.

    -- Disable netrw:
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Automatically jump to last position in file:
    vim.api.nvim_create_autocmd('BufReadPost',
    {
        pattern = {"*"},
        callback = function ()
            if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
                vim.fn.execute("normal! g`\"")
                vim.cmd("silent! foldopen!")
            end
        end
    })

    -- Setup diff:
    vim.opt.diffopt = 'internal,filler,closeoff,internal,algorithm:patience'
end

Global_Setup()

-- Clear Lsp log:
local lsplog = os.getenv("HOME") .. "/.local/state/nvim/lsp.log"
local f=io.open(lsplog,"r")
if f~=nil then
  io.close(f)
  os.remove(lsplog)
end

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"
require("config.lazy")

-- Doxygen:
-- /mnt/devserver/developers/980002yy/ocp/source/platform/sic_driver_AD1010/include/sic_lws.h:47: warning: documentation for unknown define LWS_IOCTL_CMD_RESET found.
-- Make:
-- /mnt/devserver/developers/980002yy/ocp/source/platform/libplt_AL1010/include/sys.h:340:1: error: unknown type name 'skdfjkdjf'
vim.opt.errorformat = {
"%f:%l:%c:\\ %tarning:\\ %m",
"%f:%l:%c:\\ %trror:\\ %m",
"%f:%l:\\ %tarning:\\ %m",
"%f:%l:\\ %trror:\\ %m",
}

-- Autocmds:
require("config.autocmds")
