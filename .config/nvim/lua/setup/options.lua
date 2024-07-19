-- General settings
vim.opt.mouse = 'a'
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.timeoutlen = 100
vim.opt.updatetime = 300
vim.opt.conceallevel = 0
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'

-- Numbered lines
vim.opt.number = true
vim.opt.numberwidth = 2

-- Indentation spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Pattern searching
vim.opt.hlsearch = true
vim.opt.ignorecase = true

-- Scrolloff rules
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Splitting rules
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Backup files
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false

-- Spell checker
vim.opt.spell = false
vim.opt.spelllang = 'en_us'

-- Section folding
vim.opt.foldexpr = ''
vim.opt.foldmethod = 'manual'

-- File encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Display hidden characters
vim.opt.list = true
vim.opt.listchars = { eol = '¬', tab = '▸ ', trail = '·' }

-- Popup menu
vim.opt.pumheight = 10
vim.opt.completeopt = { 'menuone', 'preview', 'noselect' }

