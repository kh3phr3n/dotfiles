-- <*Leader>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

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
vim.keymap.set('n', '<F9>', '<Cmd>set list!<CR>')
vim.keymap.set('n', '<F11>', '<Cmd>set number!<CR>')
vim.keymap.set('n', '<F12>', '<Cmd>set relativenumber!<CR>')

-- Save current buffer
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<Cmd>w<CR><Esc>')

-- Search and replace pattern
vim.keymap.set('n', '<Leader>sa', ':%s///gc<Left><Left><Left><Left>')
vim.keymap.set('n', '<Leader>sl', ':.s///gc<Left><Left><Left><Left>')

