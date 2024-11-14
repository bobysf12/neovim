vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.termguicolors = true -- True color support
opt.background = "dark" -- or "light" for light mode
opt.signcolumn = "yes" -- Always show the sign column

opt.autoindent = true -- Copy indent from current line when starting a new line

opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true -- Ignore case if the search pattern is all lowercase, case-sensitive otherwise

opt.cursorline = true -- Highlight the current line

opt.backspace = { "indent", "eol", "start" } -- Allow backspacing over everything in insert mode

opt.clipboard:append("unnamedplus") -- Use the system clipboard

-- split windows
opt.splitbelow = true
opt.splitright = true

