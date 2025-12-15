-- Basic settings
vim.o.mouse = 'nv'
vim.o.wrap = false
vim.o.showmode = false
vim.o.ignorecase = true
vim.o.termguicolors = true

-- Numbered lines
vim.o.number = true
vim.o.numberwidth = 2

-- Indentation spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Key code timeouts
vim.o.timeoutlen = 200
vim.o.ttimeoutlen = 20

-- Scrolloff rules
vim.o.scrolloff = 3
vim.o.sidescrolloff = 3

-- Splitting rules
vim.o.splitright = true
vim.o.splitbelow = true

-- Backup files
vim.o.swapfile = false
vim.o.writebackup = false

-- Floating windows style
vim.o.winborder = 'rounded'

-- Cursor movements
vim.o.whichwrap = 'b,s,h,l,<,>,[,]'

-- Clipboard registers *|+
vim.o.clipboard = 'unnamed,unnamedplus'

-- Display hidden characters
vim.o.fillchars = 'fold: '
vim.o.listchars = 'eol:¬,tab:→ ,trail:·'

-- Popup menu
vim.o.pumheight = 10
vim.o.completeopt = 'menu,menuone,noselect'

-- Section folding
vim.o.foldlevel = 99
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

