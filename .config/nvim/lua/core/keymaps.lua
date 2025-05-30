-- <*Leader>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Redo with opposite of undo
vim.keymap.set('n', 'U', '<C-r>')

-- Better Visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', 'J', ':mo \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':mo \'<-2<CR>gv=gv')

-- Windows creation
vim.keymap.set('n', '<Leader>x', '<Cmd>sp<CR>')
vim.keymap.set('n', '<Leader>v', '<Cmd>vs<CR>')

-- Windows navigation
vim.keymap.set('n', '<C-k>', '<Cmd>wincmd k<CR>')
vim.keymap.set('n', '<C-j>', '<Cmd>wincmd j<CR>')
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd h<CR>')
vim.keymap.set('n', '<C-l>', '<Cmd>wincmd l<CR>')

-- Windows scrolling
vim.keymap.set('n', '<ScrollWheelLeft>', '<Nop>')
vim.keymap.set('n', '<ScrollWheelRight>', '<Nop>')

-- Windows resizing
vim.keymap.set('n', '<C-Up>', '<Cmd>resize +2<CR>')
vim.keymap.set('n', '<C-Down>', '<Cmd>resize -2<CR>')
vim.keymap.set('n', '<C-Left>', '<Cmd>vert resize -2<CR>')
vim.keymap.set('n', '<C-Right>', '<Cmd>vert resize +2<CR>')

-- <F*> key utilities
vim.keymap.set('n', '<F9>', '<Cmd>set list!<CR>')
vim.keymap.set('n', '<F11>', '<Cmd>set number!<CR>')
vim.keymap.set('n', '<F12>', '<Cmd>set relativenumber!<CR>')

-- Multiple mode actions
vim.keymap.set({ 'i', 'n' }, '<C-s>', '<Cmd>write<CR><Esc>')
vim.keymap.set({ 'i', 'n' }, '<Esc>', '<Cmd>nohlsearch<CR><Esc>')

-- Find and replace pattern
vim.keymap.set('n', '<Leader>sa', ':%s///gc<Left><Left><Left><Left>')
vim.keymap.set('n', '<Leader>sl', ':.s///gc<Left><Left><Left><Left>')

