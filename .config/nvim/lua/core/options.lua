-- Basic settings
vim.opt.mouse = 'a'
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.timeoutlen = 200
vim.opt.cursorline = true
vim.opt.termguicolors = true

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

-- File encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Clipboard registers *|+
vim.opt.clipboard = 'unnamed,unnamedplus'

-- Section folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- Popup menu
vim.opt.pumheight = 10
vim.opt.completeopt = { 'menuone', 'preview' }

-- Display hidden characters
vim.opt.list = true
vim.opt.listchars = { eol = '¬', tab = '▸ ', trail = '·' }

-- Checkhealth providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Neovim GUI
if vim.g.neovide then
  -- Padding
  vim.g.neovide_padding_left = 2
  vim.g.neovide_padding_right = 2

  -- Text Gamma and Contrast
  vim.g.neovide_text_gamma = 0.8
  vim.g.neovide_text_contrast = 0.1
end

