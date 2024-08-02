-- Basic settings
vim.o.mouse = 'a'
vim.o.wrap = false
vim.o.showmode = false
vim.o.timeoutlen = 200
vim.o.cursorline = true
vim.o.termguicolors = true

-- Numbered lines
vim.o.number = true
vim.o.numberwidth = 2

-- Indentation spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Pattern searching
vim.o.hlsearch = true
vim.o.ignorecase = true

-- Scrolloff rules
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Splitting rules
vim.o.splitright = true
vim.o.splitbelow = true

-- Backup files
vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false

-- Spell checker
vim.o.spell = false
vim.o.spelllang = 'en_us'

-- File encoding
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- Checkhealth providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Cursor movements
vim.o.whichwrap = 'b,s,h,l,<,>,[,]'

-- Popup menu
vim.o.pumheight = 10
vim.o.completeopt = 'menuone,preview'

-- Clipboard registers *|+
vim.o.clipboard = 'unnamed,unnamedplus'

-- Display hidden characters
vim.o.list = true
vim.o.listchars = 'eol:¬,tab:→ ,trail:·'

-- Section folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Neovim GUI
if vim.g.neovide then
  -- Padding
  vim.g.neovide_padding_left = 2
  vim.g.neovide_padding_right = 2

  -- Text Gamma and Contrast
  vim.g.neovide_text_gamma = 0.8
  vim.g.neovide_text_contrast = 0.1

  -- Font options
  vim.o.linespace = 1
  vim.o.guifont = 'Iosevka Nerd Font Mono Extended SemiBold:h11:w0'
end

