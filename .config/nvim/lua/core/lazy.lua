-- Bootstrap lazy.nvim
local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require('lazy').setup({{ import = 'plugins' }}, {
  -- Basics
  checker = {
    enabled = true,
    notify = false
  },
  change_detection = {
    notify = false
  },

  -- Command Palette vibe!
  vim.keymap.set('n', '<Leader><S-p>', '<Cmd>Lazy<CR>')
})

