-- <*Leader>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Tabs management
vim.keymap.set('n', '<Tab>', '<Cmd>tabnext<CR>')
vim.keymap.set('n', '<Leader>t', '<Cmd>tabnew<CR>')

-- Splits management
vim.keymap.set('n', '<Leader>h', '<Cmd>sp<CR>')
vim.keymap.set('n', '<Leader>v', '<Cmd>vs<CR>')
vim.keymap.set('n', '<S-k>', '<Cmd>wincmd k<CR>')
vim.keymap.set('n', '<S-j>', '<Cmd>wincmd j<CR>')
vim.keymap.set('n', '<S-h>', '<Cmd>wincmd h<CR>')
vim.keymap.set('n', '<S-l>', '<Cmd>wincmd l<CR>')
vim.keymap.set('n', '<C-k>', '<Cmd>resize +2<CR>')
vim.keymap.set('n', '<C-j>', '<Cmd>resize -2<CR>')
vim.keymap.set('n', '<C-h>', '<Cmd>vert resize -2<CR>')
vim.keymap.set('n', '<C-l>', '<Cmd>vert resize +2<CR>')

-- Clear search with <Esc>
vim.keymap.set({ 'i', 'n' }, '<Esc>', '<Cmd>noh<CR><Esc>')

-- <F*> key utilities
vim.keymap.set('n', '<F11>', '<Cmd>set list!<CR>')
vim.keymap.set('n', '<F12>', '<Cmd>set termguicolors!<CR>')

-- Numbers management
vim.keymap.set('n', '<Leader>n', '<Cmd>set number!<CR>')
vim.keymap.set('n', '<Leader>rn', '<Cmd>set relativenumber!<CR>')

-- Save current buffer
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<Cmd>w<CR><Esc>')

