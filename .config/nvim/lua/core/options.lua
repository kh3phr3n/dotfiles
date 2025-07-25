-- Basic settings
vim.o.wrap = false
vim.o.showmode = false
vim.o.ignorecase = true
vim.o.termguicolors = true

-- Numbered lines
vim.o.number = false
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

-- Neovim GUI
if vim.g.neovide then
  -- Padding
  vim.g.neovide_padding_left = 4
  vim.g.neovide_padding_right = 4

  -- Text Gamma and Contrast
  vim.g.neovide_text_gamma = 0.8
  vim.g.neovide_text_contrast = 0.1

  -- Font options
  vim.o.linespace = 1
  vim.o.guifont = 'Iosevka NFM:h9:w0.12'
end

