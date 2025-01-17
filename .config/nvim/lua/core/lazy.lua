-- Bootstrap lazy.nvim
local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require('lazy').setup({{ import = 'plugins' }}, {
  -- Basics
  ui = {
    size = { width = 1.0, height = 0.9 },
    border = 'rounded',
    backdrop = 100
  },
  checker = {
    enabled = true,
    notify = false
  },
  change_detection = {
    notify = false
  },

  -- Open UI
  vim.keymap.set('n', '<F2>', '<Cmd>Lazy<CR>')
})

